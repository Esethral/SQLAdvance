# Standard library
import re

# Third-party
from flask import (
    Blueprint,
    flash,
    redirect,
    render_template,
    request,
    url_for,
)
from flask_login import login_required
from sqlalchemy import desc, func, select

# Application
from Advance.extensions import db
from Advance.services import (
    alert_scan,
    alert_send,
    emergency_alert,
    get_date_range,
    maintenance_alert,
    send_message,
    tech_support,
    tech_support_update,
    work_order,
    work_order_update,
)
from Advance.setup.setup_models import Unit

from advance_helpers import (
    get_user,
    secure_remove,
    secure_update,
)
from advance_models import Users

# Blueprint-local
from .admin_helpers import get_unit_id
from .admin_models import (
    MaintenanceRequest,
    Message,
    TechSupport,
    Unitlog,
)

admin = Blueprint(
    "admin",
    __name__,
    template_folder="templates",
    static_folder="static",
)

######################################

@admin.route('/')
@login_required
def index():
    return render_template('admin.html')

@admin.route("/email_internal_test", methods=["GET"])
def email_internal_test():

    # body = f"""
    body =  """
    Keyword Alert

    Keyword: 911

    Client: Tess Data

    Tess called 911 over the weekend.
    """

    send_message(
        receiver_id=1,
        receiver_name="Program Supervisor",
        subject="Keyword Alert",
        body=body,
        sender="Keyword Scanner"
    )

    return "Message Sent"

@admin.route("/email_test", methods=["GET"])
def email_test():

    alert_send(
        subject="TEST ALERT",
        body="This is a test from Flask route"
    )

    return "sent"

@admin.route('/maintenance', methods=["GET", "POST"])
@login_required
def maintenance():

    user     = get_user()
    fullname = user.fullname
    today    = db.session.query(func.current_date()).scalar()

    if request.method == "POST":

        unit_lname = request.form.get("unit_lname")
        unit_id = get_unit_id(unit_lname)
        lognote = request.form.get("request_text")

        maint = MaintenanceRequest(unit_id      = unit_id,
                                   unit_lname   = unit_lname,
                                   staff_name   = request.form.get("staff_name"),
                                   staff_email  = request.form.get("staff_email"),
                                   staff_phone  = request.form.get("staff_phone"),
                                   request_date = today,
                                   request_type = request.form.get("request_type"),
                                   address      = request.form.get("address"),
                                   client_name  = request.form.get("client_name"),
                                   client_phone = request.form.get("client_phone"),
                                   client_permission = request.form.get("client_permission"),
                                   client_available  = request.form.get("client_available"),
                                   high_risk    = request.form.get("high_risk"),
                                   safety_issue = request.form.get("safety_issue"),
                                   director_approved = request.form.get("director_approved"),
                                   request_text = request.form.get("request_text"))
        db.session.add(maint)
        db.session.commit()
        work_order(maint)

        if request.form.get("high_risk") == "Yes":

            body = (
                f"Unit: {unit_lname}\n"
                f"User: {fullname}\n\n"
                f"{lognote}"
            )

            maintenance_alert(body)
 
        return redirect(url_for('admin.maintenance_view'))

    return render_template('maintenance.html', fullname = fullname, units = Unit.query.all() )

@admin.route('/maintenance_print', methods=["GET", "POST"])
@login_required
def maintenance_print():

    action = request.form.get("action")
    start_date, end_date = get_date_range(request)

    if request.method != "POST":

    # -----------------------------
    # Use services.py get_date_range and set_date.htmlinclude
    # to set a custom date range else default to 30 days.
    # -----------------------------

    # BEGIN

        records = (
            db.session.query(MaintenanceRequest)
            .filter(
                MaintenanceRequest.request_date.between(
                    start_date,
                    end_date
                )
            )
            .all()
        )

        return render_template(
            "maintenance_select.html",
            records=records,
            start_date=start_date,
            end_date=end_date
        )

    if action == "set_date":

        records = (
            db.session.query(MaintenanceRequest)
            .filter(
                MaintenanceRequest.request_date.between(
                    start_date,
                    end_date
                )
            )
            .all()
        )

        return render_template(
            "maintenance_select.html",
            records=records,
            start_date=start_date,
            end_date=end_date
        )

    # END

    rec_id = request.form.get("rec_id")

    if action == "select":

        record = (
            db.session.query(MaintenanceRequest)
            .filter(MaintenanceRequest.rec_id == rec_id)
            .first()
        )

        return render_template(
            "maintenance_print.html",
            rec_id=rec_id,
            record=record,
            units=Unit.query.all()
        )

    return redirect(url_for("admin.maintenance_view"))

@admin.route('/maintenance_update', methods=["GET", "POST"])
@login_required
def maintenance_update():

    update_check = secure_update()
    if update_check:
        return update_check

    action = request.form.get("action")

    if request.method != "POST":
        records = db.session.query(MaintenanceRequest).all()
        return render_template('maintenance_select.html', records=records)

    rec_id = request.form.get("rec_id")

    # -----------------------------
    # ACTION: SELECT MAINTENANCE REQUEST
    # -----------------------------
    if action == "select":

        record = (
            db.session.query(MaintenanceRequest)
            .filter(MaintenanceRequest.rec_id == rec_id)
            .first()
        )

        return render_template(
            'maintenance_update.html',
            rec_id = rec_id,
            record = record, 
            units  = Unit.query.all() )

    # -----------------------------
    # ACTION: UPDATE RECORD
    # -----------------------------
    if action == "modify":

        maint = (
            db.session.query(MaintenanceRequest)
            .filter(MaintenanceRequest.rec_id == rec_id)
            .first()
        )

        if not maintenance_update:
            return render_template('admin.html')

        user                    = get_user()
        fullname                = user.fullname
        unit_lname              = request.form.get("unit_lname")
        unit_id                 = get_unit_id(unit_lname)
        track_id                = request.form.get("track_id")
        track_id                = int(track_id) if track_id else 1
        lognote                 = request.form.get("request_text")
        response                = request.form.get("request_comment")

        maint.unit_id           = unit_id
        maint.unit_lname        = unit_lname
        maint.track_id          = track_id
        maint.staff_email       = request.form.get("staff_email")
        maint.request_type      = request.form.get("request_type")
        maint.address           = request.form.get("address")
        maint.client_name       = request.form.get("client_name")
        maint.client_phone      = request.form.get("client_phone")
        maint.client_permission = request.form.get("client_permission")
        maint.client_available  = request.form.get("client_available")
        maint.high_risk         = request.form.get("high_risk")
        maint.safety_issue      = request.form.get("safety_issue")
        maint.director_approved = request.form.get("director_approved")
        maint.request_text      = lognote
        maint.assigned_to       = request.form.get("assigned_to")
        maint.cost_center       = request.form.get("cost_center")
        maint.request_status    = request.form.get("request_status")
        maint.request_comment   = response

        db.session.commit()
        work_order_update(maint)

        if request.form.get("high_risk") == "Yes":
            body = (
                f"Unit: {unit_lname}\n"
                f"User: {fullname}\n\n"
                f"{lognote}"
            )
            maintenance_alert(body)

        return redirect(url_for('admin.maintenance_view'))

    # -----------------------------
    # ACTION: DELETE RECORD
    # -----------------------------
    if action == "delete":

        maint = (
            db.session.query(MaintenanceRequest)
            .filter(MaintenanceRequest.rec_id == rec_id)
            .first()
        )

        if not maint:
            return render_template('admin.html')

        remove_check = secure_remove()
        if remove_check:
            return remove_check

        db.session.delete(maint)
        db.session.commit()

        return redirect(url_for('admin.maintenance'))

    # -----------------------------
    # Fallback Safety
    # -----------------------------
    return redirect(url_for('admin.maintenance'))

@admin.route('/maintenance_view')
@login_required
def maintenance_view():

    requests = (
        db.session.query(MaintenanceRequest)
        .order_by(MaintenanceRequest.request_date.desc())
        .all()
    )

    return render_template('maintenance_view.html', requests = requests )

@admin.route('/message', methods=["GET", "POST"])
@login_required
def message():

    user = get_user()
    fullname = user.fullname
    user_id = user.user_id

    sth = select(Message.rec_id, Message.sender, Message.receiver, Message.timestamp, Message.subject, Message.body, Message.read).where(Message.receiver_id == user_id).order_by(desc(Message.timestamp))
    notes = db.session.execute(sth)
    
    sth = select(Message.rec_id, Message.sender, Message.receiver, Message.timestamp, Message.subject, Message.body, Message.read).where(Message.sender_id == user_id).order_by(desc(Message.timestamp))
    sent  = db.session.execute(sth)

    if request.method == "POST":
        receiver=request.form.get("receiver")
        result = re.split(r'--', receiver)
        receiver_id = result[0]
        receiver_id = re.sub(r'\s+$', '', receiver_id)
        receiver_name = result[1]
        receiver_name = re.sub(r'^\s+', '', receiver_name)
        note = Message(sender=fullname,
                       sender_id=user_id,
                       receiver=receiver_name,
                       receiver_id=receiver_id,
                       subject=request.form.get("subject"),
                       body=request.form.get("body"))
        db.session.add(note)
        db.session.commit()
        return redirect(url_for('admin.message'))

    return render_template('message.html', notes = notes, sent = sent, users = Users.query.all() )

@admin.route('/message_actions', methods=['POST'])
@login_required
def message_actions():
    selected_ids = request.form.getlist('selected_notes')
    action = request.form.get('action')
    
    if action == 'mark_read':
        db.session.query(Message).filter(Message.rec_id.in_(selected_ids)).update({"read": True}, synchronize_session='fetch')
    
    elif action == 'delete':
        db.session.query(Message).filter(Message.rec_id.in_(selected_ids)).delete(synchronize_session='fetch')

    if action == 'mark_new':
        db.session.query(Message).filter(Message.rec_id.in_(selected_ids)).update({"read": False}, synchronize_session='fetch')
    
    db.session.commit()
    flash(f"Action '{action}' completed for selected messages.")
    return redirect(url_for('admin.message'))  # Redirect back to the messages index

@admin.route('/message_forward', methods=["GET", "POST"])
@login_required
def message_forward():

    user = get_user()
    fullname = user.fullname
    user_id = user.user_id

    if request.method == "POST":
        receiver = request.form.get("receiver")
        result = re.split(r'--', receiver)
        receiver_id = result[0].strip()
        receiver_name = result[1].strip()

        note = Message(
            sender=fullname,
            sender_id=user_id,
            receiver=receiver_name,
            receiver_id=receiver_id,
            subject=request.form.get("subject"),
            body=request.form.get("body"),
        )
        db.session.add(note)
        db.session.commit()
        return redirect(url_for("admin.message"))

    message_id = request.args.get('message_id')

    if message_id:
        message_id = int(message_id)
        sth = select(
            Message.sender, 
            Message.sender_id, 
            Message.receiver, 
            Message.receiver_id, 
            Message.timestamp, 
            Message.subject, 
            Message.body
        ).where(Message.rec_id == message_id)
        
        note = db.session.execute(sth).fetchone()
        if note:
            note_update = db.session.query(Message).filter(Message.rec_id == message_id).first()
            note_update.read = True
            db.session.commit()
            return render_template('message_forward.html', note=note, users = Users.query.all() )

    return render_template('message.html')

@admin.route('/message_remove', methods=["GET", "POST"])
@login_required
def message_remove():

    if request.method == "POST":

        delete_condition = request.form.get("delete")
        if delete_condition: 
            message_id = request.form.get("message_id")
            note_remove = db.session.query(Message).filter(Message.rec_id == message_id).first()
            db.session.delete(note_remove)
            db.session.commit()
            db.session.close()
        
        return redirect(url_for("admin.message"))

    message_id = request.args.get('message_id')

    if message_id:
        message_id = int(message_id)
        sth = select(
            Message.rec_id,
            Message.sender, 
            Message.sender_id, 
            Message.receiver, 
            Message.receiver_id, 
            Message.timestamp, 
            Message.subject, 
            Message.body
        ).where(Message.rec_id == message_id)
        
        note = db.session.execute(sth).fetchone()
        if note:
            return render_template('message_remove.html', note=note)

    return render_template('message.html')

@admin.route('/message_reply', methods=["GET", "POST"])
@login_required
def message_reply():

    user = get_user()
    fullname = user.fullname
    user_id = user.user_id

    if request.method == "POST":
        receiver = request.form.get("receiver")
        result = re.split(r'--', receiver)
        receiver_id = result[0].strip()
        receiver_name = result[1].strip()

        note = Message(
            sender=fullname,
            sender_id=user_id,
            receiver=receiver_name,
            receiver_id=receiver_id,
            subject=request.form.get("subject"),
            body=request.form.get("body"),
        )
        db.session.add(note)
        db.session.commit()
        
        return redirect(url_for("admin.message"))

    message_id = request.args.get('message_id')

    if message_id:
        message_id = int(message_id)
        sth = select(
            Message.sender, 
            Message.sender_id, 
            Message.receiver, 
            Message.receiver_id, 
            Message.timestamp, 
            Message.subject, 
            Message.body
        ).where(Message.rec_id == message_id)
        
        note = db.session.execute(sth).fetchone()
        if note:
            note_update = db.session.query(Message).filter(Message.rec_id == message_id).first()
            note_update.read = True
            db.session.commit()
            return render_template('message_reply.html', note=note)

    return render_template('message.html')

@admin.route('/message_view', methods=["GET", "POST"])
@login_required
def message_view():

    message_id = request.args.get('message_id')
    if message_id:
        message_id = int(message_id)
        sth = select(Message.sender, Message.receiver, Message.timestamp, Message.subject, Message.body).select_from(Message).where(Message.rec_id == message_id)
        note = db.session.execute(sth).fetchone()
        note_update = db.session.query(Message).filter(Message.rec_id == message_id).first()
        if note_update:
                note_update.read = True
        db.session.commit()
        return render_template('message_view.html', note = note)
    else:
        return "No message ID provided", 400

    return render_template('message.html')

@admin.route('/password_reset', methods=["GET", "POST"])
def password_reset():

    today = db.session.query(func.current_date()).scalar()
    if request.method == "POST":

        unit_lname = request.form.get("unit_lname")
        unit_id    = get_unit_id(unit_lname)
        user_name  = request.form.get("user_name")

        support = TechSupport(unit_id      = unit_id,
                              unit_lname   = unit_lname,
                              staff_name   = request.form.get("staff_name"),
                              staff_email  = request.form.get("user_email"),
                              staff_phone  = request.form.get("user_phone"),
                              request_date = today,
                              request_type = "Password Reset Request",
                              request_text = f"Password Reset Request from User: {user_name}")
        db.session.add(support)
        db.session.commit()
        tech_support(support)
 
        return render_template('password_confirm.html')

    return render_template('password_reset.html', units = Unit.query.all() )

@admin.route('/support', methods=["GET", "POST"])
@login_required
def support():

    user     = get_user()
    fullname = user.fullname
    today    = db.session.query(func.current_date()).scalar()

    if request.method == "POST":

        unit_lname=request.form.get("unit_lname")
        unit_id = get_unit_id(unit_lname)

        support = TechSupport(unit_id      = unit_id,
                              unit_lname   = unit_lname,
                              staff_name   = request.form.get("staff_name"),
                              staff_email  = request.form.get("staff_email"),
                              staff_phone  = request.form.get("staff_phone"),
                              request_date = today,
                              request_type = request.form.get("request_type"),
                              request_text = request.form.get("request_text"),
                              client_name  = request.form.get("client_name"))
        db.session.add(support)
        db.session.commit()
        tech_support(support)
 
        return redirect(url_for('admin.support_view'))

    return render_template('support.html', fullname = fullname, units = Unit.query.all() )

@admin.route('/support_print', methods=["GET", "POST"])
@login_required
def support_print():

    action = request.form.get("action")
    start_date, end_date = get_date_range(request)

    if request.method != "POST":

        records = (
            db.session.query(TechSupport)
            .filter(
                TechSupport.request_date.between(
                    start_date,
                    end_date
                )
            )
            .all()
        )

        return render_template(
            "support_select.html",
            records=records,
            start_date=start_date,
            end_date=end_date
        )

    if action == "set_date":

        records = (
            db.session.query(TechSupport)
            .filter(
                TechSupport.request_date.between(
                    start_date,
                    end_date
                )
            )
            .all()
        )

        return render_template(
            "support_select.html",
            records=records,
            start_date=start_date,
            end_date=end_date
        )

    rec_id = request.form.get("rec_id")

    if action == "select":

        record = (
            db.session.query(TechSupport)
            .filter(TechSupport.rec_id == rec_id)
            .first()
        )

        return render_template(
            'support_print.html',
            rec_id = rec_id,
            record = record, 
            units  = Unit.query.all() )

    return redirect(url_for('admin.support_view'))

@admin.route('/support_update', methods=["GET", "POST"])
@login_required
def support_update():

    update_check = secure_update()
    if update_check:
        return update_check

    action = request.form.get("action")

    if request.method != "POST":
        records = db.session.query(TechSupport).all()
        return render_template('support_select.html', records=records)

    rec_id = request.form.get("rec_id")

    # -----------------------------
    # ACTION: SELECT MAINTENANCE REQUEST
    # -----------------------------
    if action == "select":

        record = (
            db.session.query(TechSupport)
            .filter(TechSupport.rec_id == rec_id)
            .first()
        )

        return render_template(
            'support_update.html',
            rec_id = rec_id,
            record = record, 
            units  = Unit.query.all() )

    # -----------------------------
    # ACTION: UPDATE RECORD
    # -----------------------------
    if action == "modify":

        support = (
            db.session.query(TechSupport)
            .filter(TechSupport.rec_id == rec_id)
            .first()
        )

        if not support_update:
            return render_template('admin.html')

        # user                    = get_user()
        # fullname                = user.fullname
        unit_lname              = request.form.get("unit_lname")
        unit_id                 = get_unit_id(unit_lname)
        track_id                = request.form.get("track_id")
        track_id                = int(track_id) if track_id else 1
        lognote                 = request.form.get("request_text")
        response                = request.form.get("request_comment")

        support.unit_id         = unit_id
        support.unit_lname      = unit_lname
        support.track_id        = track_id
        support.staff_email     = request.form.get("staff_email")
        support.staff_phone     = request.form.get("staff_phone")
        support.request_type    = request.form.get("request_type")
        support.request_text    = lognote
        support.client_name     = request.form.get("client_name")
        support.request_status  = request.form.get("request_status")
        support.request_comment = response

        db.session.commit()
        tech_support_update(support)

        return redirect(url_for('admin.support_view'))

    # -----------------------------
    # ACTION: DELETE RECORD
    # -----------------------------
    if action == "delete":

        support = (
            db.session.query(TechSupport)
            .filter(TechSupport.rec_id == rec_id)
            .first()
        )

        if not support:
            return render_template('admin.html')

        remove_check = secure_remove()
        if remove_check:
            return remove_check

        db.session.delete(support)
        db.session.commit()

        return redirect(url_for('admin.support'))

    # -----------------------------
    # Fallback Safety
    # -----------------------------
    return redirect(url_for('admin.support'))

@admin.route('/support_view')
@login_required
def support_view():

    requests = (
        db.session.query(TechSupport)
        .order_by(TechSupport.request_date.desc())
        .all()
    )

    return render_template('support_view.html', requests = requests )

@admin.route('/unitlog', methods=["GET", "POST"])
@login_required
def unitlog():

    user     = get_user()
    fullname = user.fullname
    today    = db.session.query(func.current_date()).scalar()

    logs = (
        db.session.query(Unitlog)
        .order_by(Unitlog.logdate.desc())
        .all()
    )

    if request.method == "POST":

        unit_lname=request.form.get("unit_lname")
        unit_id = get_unit_id(unit_lname)
        track_id = request.form.get("track_id")
        track_id = int(track_id) if track_id else 1
        lognote  = request.form.get("lognote")

        log = Unitlog(unit_lname = unit_lname,
                      unit_id    = unit_id,
                      track_id   = track_id,
                      staff_name = request.form.get("staff_name"),
                      logdate    = request.form.get("logdate"),
                      subject    = request.form.get("subject"),
                      alert      = request.form.get("alert"),
                      lognote    = lognote)
        db.session.add(log)
        db.session.commit()
        alert_scan(log.lognote)

    if request.form.get("alert") == "Yes":

        body = (
            f"Unit: {unit_lname}\n"
            f"User: {fullname}\n\n"
            f"{lognote}"
        )

        emergency_alert(body)

        return redirect(url_for('admin.unitlog_view'))

    return render_template('unitlog.html', logs = logs, fullname = fullname, logdate = today, units = Unit.query.all() )

@admin.route('/unitlog_update', methods=["GET", "POST"])
@login_required
def unitlog_update():

    update_check = secure_update()
    if update_check:
        return update_check

    action = request.form.get("action")

    if request.method != "POST":
        logs = db.session.query(Unitlog).all()
        return render_template('unitlog_select.html', logs=logs)

    rec_id = request.form.get("rec_id")

    # -----------------------------
    # ACTION: SELECT UNITLOG NOTE
    # -----------------------------
    if action == "select":

        log = (
            db.session.query(Unitlog)
            .filter(Unitlog.rec_id == rec_id)
            .first()
        )

        return render_template(
            'unitlog_update.html',
            rec_id = rec_id,
            log    = log, 
            units  = Unit.query.all() )

    # -----------------------------
    # ACTION: UPDATE RECORD
    # -----------------------------
    if action == "modify":

        unitlog_update = (
            db.session.query(Unitlog)
            .filter(Unitlog.rec_id == rec_id)
            .first()
        )

        if not unitlog_update:
            return render_template('admin.html')

        user     = get_user()
        fullname = user.fullname

        unit_lname=request.form.get("unit_lname")
        unit_id  = get_unit_id(unit_lname)
        track_id = request.form.get("track_id")
        track_id = int(track_id) if track_id else 1
        lognote  = request.form.get("lognote")

        unitlog_update.unit_lname = unit_lname
        unitlog_update.unit_id    = unit_id
        unitlog_update.track_id   = track_id
        unitlog_update.logdate    = request.form.get("logdate")
        unitlog_update.subject    = request.form.get("subject")
        unitlog_update.alert      = request.form.get("alert")
        unitlog_update.lognote    = lognote

        db.session.commit()
        alert_scan(lognote)

        if request.form.get("alert") == "Yes":

            body = (
                f"Unit: {unit_lname}\n"
                f"User: {fullname}\n\n"
                f"{lognote}"
            )

            emergency_alert(body)

        return redirect(url_for('admin.unitlog'))

    # -----------------------------
    # ACTION: DELETE RECORD
    # -----------------------------
    if action == "delete":

        log = (
            db.session.query(Unitlog)
            .filter(Unitlog.rec_id == rec_id)
            .first()
        )

        if not log:
            return render_template('admin.html')

        remove_check = secure_remove()
        if remove_check:
            return remove_check

        db.session.delete(log)
        db.session.commit()

        return redirect(url_for('admin.unitlog'))

    # -----------------------------
    # Fallback Safety
    # -----------------------------
    return redirect(url_for('admin.unitlog'))

@admin.route('/unitlog_view', methods=["GET", "POST"])
@login_required
def unitlog_view():

    # logs = (
    #     db.session.query(Unitlog)
    #     .order_by(Unitlog.logdate.desc())
    #     .all()
    # )
    # 
    # return render_template('unitlog_view.html', logs = logs )

    start_date, end_date = get_date_range(request)
    unit_id = request.form.get("unit_id")

    query = (
        db.session.query(Unitlog)
        .filter(
            Unitlog.logdate.between(
                start_date,
                end_date
            )
        )
    )

    if unit_id:
        query = query.filter(Unitlog.unit_id == unit_id)

    logs = (
        query
        .order_by(Unitlog.logdate.desc())
        .all()
    )

    return render_template(
        "unitlog_view.html",
        logs=logs,
        units=Unit.query.order_by(Unit.unit_lname).all(),
        unit_id=unit_id,
        start_date=start_date,
        end_date=end_date
    )

