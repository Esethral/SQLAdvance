# Standard library
# no library imports needed for this blueprint

# Third-party
from flask import (
    Blueprint,
    redirect,
    render_template,
    request,
    url_for,
)
from flask_login import login_required
from werkzeug.security import generate_password_hash

# Application
from Advance.extensions import db

from advance_helpers import (
    secure_remove,
    secure_trust,
    secure_update,
)
from advance_models import Users

# Blueprint-local
from .setup_helpers import get_user_id, get_user_name
from .setup_models import (
    EmailInternal,
    EmailNotification,
    Keyword,
    Track,
    Unit,
)
from .setup_valid import STATES

setup = Blueprint(
    "setup",
    __name__,
    template_folder="templates",
    static_folder="static",
)

######################################

@setup.route('/')
@login_required
def index():
    return render_template('setup.html')

@setup.route('/email_internal', methods=["GET", "POST"])
@login_required
def email_internal():

    users = (
        db.session.query(Users)
        .order_by(Users.username)
        .all()
    )

    addresses = (
        db.session.query(
            EmailInternal.rec_id,
            EmailInternal.user_id,
            EmailInternal.alert,
            EmailInternal.incident,
            EmailInternal.property,
            EmailInternal.support,
            EmailInternal.user_name,
            Users.fullname, 
            Users.trust 
        )
        .join(Users, EmailInternal.user_id == Users.user_id)
        .order_by(Users.username)
        .all()
    )

    if request.method == "POST":

        user_name = request.form.get("user_name")
        user_id   = get_user_id(user_name)
        fullname  = get_user_name(user_name)

        email = EmailInternal(
                      user_id    = user_id,
                      user_name  = user_name,
                      fullname   = fullname,
                      alert      = request.form.get("alert"),
                      incident   = request.form.get("incident"),
                      property   = request.form.get("property"),
                      support    = request.form.get("support"))
        db.session.add(email)
        db.session.commit()
        return redirect(url_for('setup.email_internal_view'))

    return render_template('email_internal.html', users = users, addresses = addresses)

@setup.route('/email_internal_update', methods=["GET", "POST"])
@login_required
def email_internal_update():

    update_check = secure_update()
    if update_check:
        return update_check

    action = request.form.get("action")

    if request.method != "POST":
        users = (
            db.session.query(
                EmailInternal.rec_id,
                EmailInternal.user_id,
                EmailInternal.user_name,
                EmailInternal.alert,
                EmailInternal.incident,
                EmailInternal.property,
                EmailInternal.support,
                Users.fullname 
            )
            .join(Users, EmailInternal.user_id == Users.user_id)
            .order_by(Users.username)
            .all()
        )

        return render_template('email_internal_select.html', users=users)

    rec_id = request.form.get("rec_id")

    # -----------------------------
    # ACTION: SELECT RECORD
    # -----------------------------
    if action == "select":

        user = (
            db.session.query(EmailInternal)
            .filter(EmailInternal.rec_id == rec_id)
            .first()
        )

        return render_template(
            'email_internal_update.html',
            rec_id = rec_id,
            user = user) 

    # -----------------------------
    # ACTION: UPDATE RECORD
    # -----------------------------
    if action == "modify":

        email_internal_update = (
            db.session.query(EmailInternal)
            .filter(EmailInternal.rec_id == rec_id)
            .first()
        )

        if not email_internal_update:
            return render_template('setup.html')

        user_name = request.form.get("user_name")
        fullname  = get_user_name(user_name)

        email_internal_update.rec_id     = request.form.get("rec_id")
        email_internal_update.user_id    = request.form.get("user_id")
        email_internal_update.user_name  = user_name
        email_internal_update.fullname   = fullname  
        email_internal_update.alert      = request.form.get("alert")
        email_internal_update.incident   = request.form.get("incident")
        email_internal_update.property   = request.form.get("property")
        email_internal_update.support    = request.form.get("support")

        db.session.commit()
        return redirect(url_for('setup.email_internal_view'))

    # -----------------------------
    # ACTION: DELETE RECORD
    # -----------------------------
    if action == "delete":

        record = (
            db.session.query(EmailInternal)
            .filter(EmailInternal.rec_id == rec_id)
            .first()
        )

        if not record:
            return render_template('setup.html')

        remove_check = secure_remove()
        if remove_check:
            return remove_check

        db.session.delete(record)
        db.session.commit()

        return redirect(url_for('setup.email_internal_view'))

    # -----------------------------
    # Fallback Safety
    # -----------------------------
    return redirect(url_for('setup.email_internal_view'))

@setup.route('/email_internal_view')
@login_required
def email_internal_view():

    addresses = (
        db.session.query(
            EmailInternal.rec_id,
            EmailInternal.user_id,
            EmailInternal.alert,
            EmailInternal.incident,
            EmailInternal.property,
            EmailInternal.support,
            EmailInternal.user_name,
            Users.fullname, 
            Users.trust 
        )
        .join(Users, EmailInternal.user_id == Users.user_id)
        .order_by(Users.username)
        .all()
    )

    return render_template('email_internal_view.html', addresses = addresses)

@setup.route('/email_notification', methods=["GET", "POST"])
@login_required
def email_notification():

    users = (
        db.session.query(Users)
        .order_by(Users.username)
        .all()
    )

    addresses = (
        db.session.query(
            EmailNotification.rec_id,
            EmailNotification.user_id,
            EmailNotification.user_email,
            EmailNotification.alert,
            EmailNotification.incident,
            EmailNotification.property,
            EmailNotification.support,
            EmailNotification.user_name,
            Users.fullname, 
            Users.trust 
        )
        .join(Users, EmailNotification.user_id == Users.user_id)
        .order_by(Users.username)
        .all()
    )

    if request.method == "POST":

        user_name = request.form.get("user_name")
        user_id   = get_user_id(user_name)

        email = EmailNotification(
                      user_id    = user_id,
                      user_name  = user_name,
                      user_email = request.form.get("user_email"),
                      alert      = request.form.get("alert"),
                      incident   = request.form.get("incident"),
                      property   = request.form.get("property"),
                      support    = request.form.get("support"))
        db.session.add(email)
        db.session.commit()
        return redirect(url_for('setup.email_notification_view'))

    return render_template('email_notification.html', users = users, addresses = addresses)

@setup.route('/email_notification_update', methods=["GET", "POST"])
@login_required
def email_notification_update():

    update_check = secure_update()
    if update_check:
        return update_check

    action = request.form.get("action")

    if request.method != "POST":
        users = (
            db.session.query(
                EmailNotification.rec_id,
                EmailNotification.user_id,
                EmailNotification.user_name,
                EmailNotification.user_email,
                EmailNotification.alert,
                EmailNotification.incident,
                EmailNotification.property,
                EmailNotification.support,
                Users.fullname 
            )
            .join(Users, EmailNotification.user_id == Users.user_id)
            .order_by(Users.username)
            .all()
        )

        return render_template('email_notification_select.html', users=users)

    rec_id = request.form.get("rec_id")

    # -----------------------------
    # ACTION: SELECT RECORD
    # -----------------------------
    if action == "select":

        user = (
            db.session.query(EmailNotification)
            .filter(EmailNotification.rec_id == rec_id)
            .first()
        )

        return render_template(
            'email_notification_update.html',
            rec_id = rec_id,
            user = user) 

    # -----------------------------
    # ACTION: UPDATE RECORD
    # -----------------------------
    if action == "modify":

        email_notification_update = (
            db.session.query(EmailNotification)
            .filter(EmailNotification.rec_id == rec_id)
            .first()
        )

        if not email_notification_update:
            return render_template('setup.html')

        email_notification_update.rec_id     = request.form.get("rec_id")
        email_notification_update.user_id    = request.form.get("user_id")
        email_notification_update.user_name  = request.form.get("user_name")
        email_notification_update.user_email = request.form.get("user_email")
        email_notification_update.alert      = request.form.get("alert")
        email_notification_update.incident   = request.form.get("incident")
        email_notification_update.property   = request.form.get("property")
        email_notification_update.support    = request.form.get("support")

        db.session.commit()
        return redirect(url_for('setup.email_notification_view'))

    # -----------------------------
    # ACTION: DELETE RECORD
    # -----------------------------
    if action == "delete":

        record = (
            db.session.query(EmailNotification)
            .filter(EmailNotification.rec_id == rec_id)
            .first()
        )

        if not record:
            return render_template('setup.html')

        remove_check = secure_remove()
        if remove_check:
            return remove_check

        db.session.delete(record)
        db.session.commit()

        return redirect(url_for('setup.email_notification_view'))

    # -----------------------------
    # Fallback Safety
    # -----------------------------
    return redirect(url_for('setup.email_notification_view'))

@setup.route('/email_notification_view')
@login_required
def email_notification_view():

    addresses = (
        db.session.query(
            EmailNotification.rec_id,
            EmailNotification.user_id,
            EmailNotification.user_email,
            EmailNotification.alert,
            EmailNotification.incident,
            EmailNotification.property,
            EmailNotification.support,
            EmailNotification.user_name,
            Users.fullname, 
            Users.trust 
        )
        .join(Users, EmailNotification.user_id == Users.user_id)
        .order_by(Users.username)
        .all()
    )

    return render_template('email_notification_view.html', addresses = addresses)

@setup.route('/keyword', methods=["GET", "POST"])
@login_required
def keyword():

    words = (
        db.session.query(Keyword)
        .order_by(Keyword.keyword)
        .all()
    )

    if request.method == "POST":

        alert = Keyword(keyword = request.form.get("keyword"))
        db.session.add(alert)
        db.session.commit()
        return redirect(url_for('setup.keyword_view'))

    return render_template('keyword.html', words = words)

@setup.route('/keyword_update', methods=["GET", "POST"])
@login_required
def keyword_update():

    update_check = secure_update()
    if update_check:
        return update_check

    action = request.form.get("action")

    if request.method != "POST":
        words = db.session.query(Keyword).all()
        return render_template('keyword_select.html', words=words)

    rec_id = request.form.get("rec_id")

    # -----------------------------
    # ACTION: SELECT RECORD
    # -----------------------------

    if action == "select":

        words  = (
            db.session.query(Keyword)
            .order_by(Keyword.keyword)
            .all()
        )

        word = (
            db.session.query(Keyword)
            .filter(Keyword.rec_id == rec_id)
            .first()
        )

        return render_template(
            'keyword_update.html',
            rec_id = rec_id,
            words = words,
            word = word.keyword) 

    # -----------------------------
    # ACTION: UPDATE RECORD
    # -----------------------------
    if action == "modify":

        keyword_update = (
            db.session.query(Keyword)
            .filter(Keyword.rec_id == rec_id)
            .first()
        )

        if not keyword_update:
            return render_template('setup.html')

        keyword_update.rec_id  = request.form.get("rec_id")
        keyword_update.keyword = request.form.get("keyword")

        db.session.commit()
        return redirect(url_for('setup.keyword_view'))

    # -----------------------------
    # ACTION: DELETE RECORD
    # -----------------------------
    if action == "delete":

        record = (
            db.session.query(Keyword)
            .filter(Keyword.rec_id == rec_id)
            .first()
        )

        if not record:
            return render_template('setup.html')

        remove_check = secure_remove()
        if remove_check:
            return remove_check

        db.session.delete(record)
        db.session.commit()

        return redirect(url_for('setup.keyword_view'))

    # -----------------------------
    # Fallback Safety
    # -----------------------------
    return redirect(url_for('setup.keyword_view'))

@setup.route('/keyword_view')
@login_required
def keyword_view():

    words  = (
        db.session.query(Keyword)
        .order_by(Keyword.keyword)
        .all()
    )

    return render_template('keyword_view.html', words = words)

@setup.route('/unit', methods=["GET", "POST"])
@login_required
def unit():

    units = (
        db.session.query(
            Unit.unit_id,
            Unit.unit_lname,
            Track.track_name,
            Unit.supervisor,
            Unit.address,
            Unit.city,
            Unit.state,
            Unit.postcode,
            Unit.phone
        )
        .join(Track, Track.track_id == Unit.track_id)
        .order_by(Track.track_name)
        .all()
    )
    tracks = db.session.query(Track).order_by(Track.track_name).all()

    if request.method == "POST":

        unit = Unit(unit_lname = request.form.get("unit_lname"),
                    track_id   = request.form.get("track_id"),
                    supervisor = request.form.get("supervisor"),
                    address    = request.form.get("address"),
                    city       = request.form.get("city"),
                    state      = request.form.get("state"),
                    postcode   = request.form.get("postcode"),
                    phone      = request.form.get("phone"))
        db.session.add(unit)
        db.session.commit()
        return redirect(url_for('setup.unit_view'))

    return render_template('unit.html', units = units, tracks = tracks, states = STATES)

@setup.route('/unit_update', methods=["GET", "POST"])
@login_required
def unit_update():

    update_check = secure_update()
    if update_check:
        return update_check

    action = request.form.get("action")

    if request.method != "POST":
        units = (
            db.session.query(
                Unit.unit_id,
                Unit.unit_lname,
                Unit.state,
                Track.track_name,
                Unit.supervisor,
                Unit.address,
                Unit.city,
                Unit.postcode 
            )
            .join(Track, Track.track_id == Unit.track_id)
            .order_by(Track.track_name)
            .all()
        )

        return render_template('unit_select.html', units=units)

    unit_id = request.form.get("unit_id")

    # -----------------------------
    # ACTION: SELECT RECORD
    # -----------------------------
    if action == "select":

        units = (
            db.session.query(
                Unit.unit_id,
                Unit.unit_lname,
                Unit.state,
                Track.track_name,
                Unit.supervisor,
                Unit.address,
                Unit.city,
                Unit.postcode 
            )
            .join(Track, Track.track_id == Unit.track_id)
            .order_by(Track.track_name)
            .all()
        )

        unit = (
            db.session.query(Unit, Track)
            .join(Track, Track.track_id == Unit.track_id)
            .filter(Unit.unit_id == unit_id)
            .first()
        )

        tracks = db.session.query(Track).order_by(Track.track_name).all()

        return render_template(
            'unit_update.html',
            unit_id = unit_id,
            states = STATES,
            tracks = tracks,
            units = units,
            unit = unit) 

    # -----------------------------
    # ACTION: UPDATE RECORD
    # -----------------------------
    if action == "modify":

        unit_id = request.form.get("unit_id")

        unit_update = (
            db.session.query(Unit)
            .filter(Unit.unit_id == unit_id)
            .first()
        )

        if not unit_update:
            return render_template('setup.html')

        unit_update.unit_lname = request.form.get("unit_lname")
        unit_update.track_id   = request.form.get("track_id")
        unit_update.supervisor = request.form.get("supervisor")
        unit_update.address    = request.form.get("address")
        unit_update.city       = request.form.get("city")
        unit_update.state      = request.form.get("state")
        unit_update.postcode   = request.form.get("postcode")
        unit_update.phone      = request.form.get("phone")

        db.session.commit()
        return redirect(url_for('setup.unit_view'))

    # -----------------------------
    # ACTION: DELETE RECORD
    # -----------------------------
    if action == "delete":

        record = (
            db.session.query(Unit)
            .filter(Unit.unit_id == unit_id)
            .first()
        )

        if not record:
            return render_template('setup.html')

        remove_check = secure_remove()
        if remove_check:
            return remove_check

        db.session.delete(record)
        db.session.commit()

        return redirect(url_for('setup.unit_view'))

    # -----------------------------
    # Fallback Safety
    # -----------------------------
    return redirect(url_for('setup.unit_view'))

@setup.route('/unit_view')
@login_required
def unit_view():

    units = (
        db.session.query(
            Unit.unit_id,
            Unit.unit_lname,
            Track.track_name,
            Unit.track_id,
            Unit.supervisor,
            Unit.address,
            Unit.city,
            Unit.state,
            Unit.postcode,
            Unit.phone
        )
          .join(Track, Track.track_id == Unit.track_id)
          .order_by(Track.track_name)
          .all()
      )

    return render_template('unit_view.html', units = units)

@setup.route('/useradd', methods=["GET", "POST"])
@login_required
def useradd():

    from Advance.services import send_message
    # from Advance.admin_models import Message

    trust_check = secure_trust()
    if trust_check:
        return trust_check

    if request.method == "POST":
        user = Users(username=request.form.get("username"),
                     fullname=request.form.get("fullname"),
                     email=request.form.get("email"),
                     track=request.form.get("track"),
                     trust=request.form.get("trust"),
                     remove=request.form.get("remove"),
                     update=request.form.get("update"))
        password=request.form.get("password")
        # werkzeug hashed/salted passwd INSERT
        pw_hash = generate_password_hash(password, method='pbkdf2', salt_length=16)
        user.password = pw_hash
        db.session.add(user)
        db.session.commit()

        send_message(
            receiver_id=user.user_id,
            receiver_name=user.fullname,
            subject="Welcome To SQL Advance",
            body="Welcome to SQL Advance!",
            sender="Database Administrator"
        )

        return redirect(url_for('auth.userlist'))

    return render_template('useradd.html', users = Users.query.all() )

@setup.route('/userdel', methods=["GET", "POST"])
@login_required
def userdel():

    trust_check = secure_trust()
    if trust_check:
        return trust_check

    if request.method == "POST":
        
        user_id = request.form.get("user_id")
        action = request.form.get("action")

        if user_id and not action:

            user = db.session.query(Users).filter(Users.user_id == user_id).first()
            return render_template('userdel.html', user_id=user_id, user=user)

        if user_id and action == "delete":
    
            user_delete = db.session.query(Users).filter(Users.user_id == user_id).first()

            if user_delete:

                db.session.delete(user_delete)
                db.session.commit()

                return redirect(url_for('auth.userlist'))

    return render_template('get_user.html', users = Users.query.all() )

@setup.route('/usermod', methods=["GET", "POST"])
@login_required
def usermod():

    trust_check = secure_trust()
    if trust_check:
        return trust_check

    if request.method == "POST":
        
        user_id = request.form.get("user_id")
        action = request.form.get("action")

        if user_id and not action:

            user = db.session.query(Users).filter(Users.user_id == user_id).first()
            return render_template('usermod.html', user_id=user_id, user=user)

        if user_id and action == "update":
    
            user_update = db.session.query(Users).filter(Users.user_id == user_id).first()

            if user_update:

                user_update.username = request.form.get("username")
                user_update.fullname = request.form.get("fullname")
                user_update.email    = request.form.get("email")
                user_update.track    = request.form.get("track")
                user_update.trust    = request.form.get("trust")
                user_update.remove   = request.form.get("remove")
                user_update.update   = request.form.get("update")

                db.session.commit()

                return redirect(url_for('auth.userlist'))

    return render_template('get_user.html', users = Users.query.all() )

@setup.route('/userpass', methods=["GET", "POST"])
@login_required
def userpass():

    trust_check = secure_trust()
    if trust_check:
        return trust_check

    if request.method == "POST":
        
        user_id = request.form.get("user_id")
        action = request.form.get("action")

        if user_id and not action:

            user = db.session.query(Users).filter(Users.user_id == user_id).first()
            return render_template('userpass.html', user_id=user_id, user=user)

        if user_id and action == "update":
    
            user_update = db.session.query(Users).filter(Users.user_id == user_id).first()

            if user_update:

                user_update.password = request.form.get("password")
                pw_hash = generate_password_hash(user_update.password, method='pbkdf2', salt_length=16)
                user_update.password = pw_hash

            db.session.commit()

            return redirect(url_for('auth.userlist'))

    return render_template('get_user.html', users = Users.query.all() )
