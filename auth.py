from datetime import datetime
from flask import Blueprint, render_template, redirect, url_for, request, flash, session
from flask_login import login_user, logout_user, login_required, current_user
from werkzeug.security import check_password_hash
from advance_models import Users, Login
from Advance.admin.admin_models import Message
from Advance.extensions import db

auth = Blueprint('auth', __name__)

@auth.route('/')
@login_required
def home(user=None):
        return render_template('home.html')

@auth.route('/index')
@login_required
def index():

    from sqlalchemy import select, func

    stmt = (
        select(Login.user_id, Login.username, Login.logtime,
               Users.fullname, Users.email, Login.ip)
        .select_from(Login)
        .join(Users, Login.username == Users.username)
    )

    records = db.session.execute(stmt).fetchall()

    user_fullname = current_user.fullname

    unseen_stmt = (
        select(func.count())
        .select_from(Message)
        .where(
            Message.receiver_id == current_user.user_id,
            (Message.read.is_(False)) | (Message.read.is_(None))
        )
    )

    seen_stmt = (
        select(func.count())
        .select_from(Message)
        .where(
            Message.receiver_id == current_user.user_id,
            Message.read.is_(True)
        )
    )

    unseen = db.session.execute(unseen_stmt).scalar()
    seen = db.session.execute(seen_stmt).scalar()

    return render_template(
        'index.html',
        logins=records,
        fullname=user_fullname,
        email=unseen,
        seen=seen
    )

@auth.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':

        db.session.rollback()  # critical under mod_wsgi

        logout_user()

        username = request.form.get("username")
        password = request.form.get("password")

        user = Users.query.filter_by(username=username).first()

        if not user or not check_password_hash(user.password, password):
            return render_template('login.html')

        try:
            # --- READ/WRITE MIX BUT SINGLE SESSION ---
            Login.query.filter_by(username=username).delete()

            ip_address = (
                request.environ.get('HTTP_X_FORWARDED_FOR')
                or request.environ.get('REMOTE_ADDR')
            )

            db.session.add(Login(
                user_id=user.user_id,
                username=username,
                ip=ip_address,
                logtime=datetime.utcnow()
            ))

            login_user(user)
            session["username"] = username

            db.session.commit()

        except Exception:
            db.session.rollback()
            raise

        next_page = request.args.get("next")
        if next_page and next_page.startswith("/"):
            return redirect(next_page)

        return redirect(url_for("auth.index"))

    return render_template("login.html")

@auth.route('/logout', methods=['GET', 'POST'])
@login_required
def logout():

    username = current_user.username
    ip_address = request.headers.get("X-Forwarded-For", request.remote_addr)

    now = datetime.now()
    current_time = now.strftime("%Y-%m-%d at %H:%M:%S")

    with open("/opt/flask-app/log/access_log", "a") as f:
        f.write(f"User {username} logged out on {current_time} from {ip_address}\n")

    try:
        Login.query.filter_by(username=username).delete()
        db.session.commit()
    except Exception:
        db.session.rollback()
        raise

    logout_user()
    session.pop("username", None)

    return redirect(url_for("auth.login"))

@auth.route('/logout_all')
@login_required
def logout_all():

    username = current_user.username

    from advance_models import Users
    from sqlalchemy import select

    stmt = (
        select(Users.trust)
        .where(Users.username == username)
        .where(Users.trust == 't')
    )

    is_trusted = db.session.execute(stmt).first()

    if not is_trusted:
        flash('User Account Access Is Restricted To IT Staff', 'warning')
        return render_template('admin.html')

    # wipe all login sessions
    db.session.query(Login).delete()
    db.session.commit()

    # clear local session
    session.clear()

    return redirect(url_for('auth.login'))

@auth.route('/userlist')
@login_required
def userlist():

    from sqlalchemy import select

    users_stmt = select(
        Users.user_id,
        Users.username,
        Users.fullname,
        Users.email
    )

    users = db.session.execute(users_stmt).mappings().all()

    logins_stmt = (
        select(
            Login.user_id,
            Login.username,
            Login.logtime,
            Users.fullname,
            Users.email,
            Login.ip
        )
        .select_from(Login.__table__)
        .join(Users.__table__, Login.user_id == Users.user_id)
    )

    logins = db.session.execute(logins_stmt).mappings().all()

    return render_template(
        'userlist.html',
        users=users,
        logins=logins
    )

