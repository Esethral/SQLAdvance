from datetime import datetime
import re

from flask import Blueprint, render_template, request, redirect, url_for
from flask_login import login_required
from sqlalchemy import select, func, and_, desc, text

from Advance.chart.chart_helpers import get_client, get_diag_lists, get_rows
from Advance.extensions import db
from Advance.setup.setup_models import Unit
from Advance.services import alert_scan
from advance_helpers import (
    future_date, get_date, get_placement, get_unit,
    get_user, secure_remove, secure_update, secure_admin
)
from .chart_models import (
    MPI, Demographics, Diagnosis, Entitlements, Functional, FunctionalSkills, Inpatient,
    Placement, ProgressNote, SupportPlan
)
from .chart_valid import (
BOOLEAN, SEX, GENDER, ORIENTATION, RACE, RACE_DETAIL, ASIAN_DETAIL, PACIFIC_DETAIL, ETHNICITY, ETHNICITY_DETAIL, MARITAL, PARENT, HOUSEHOLD, LANGUAGE, RELIGION
)

chart=Blueprint('chart', __name__,template_folder='templates',static_folder='static')

@chart.route('/')
@login_required
def index():
    return render_template('chart.html')

@chart.route('/clients')
@login_required
def clients():

    sth = select(MPI.client_id, MPI.lname, MPI.fname, MPI.dob, MPI.ssn).select_from(MPI)
    results = db.session.execute(sth)
    return render_template('clients.html', clients = results)

@chart.route('/client_add', methods=["GET", "POST"])
@login_required
def client_add():

    admin_check = secure_admin()
    if admin_check:
        return admin_check

    if request.method == "POST":

        mpi = MPI(fname=request.form.get("fname"),
                  lname=request.form.get("lname"),
                  dob=request.form.get("dob"),
                  ssn=request.form.get("ssn"),
                  medicaid=request.form.get("medicaid"))

        db.session.add(mpi)
        db.session.commit()
        return redirect(url_for('chart.clients'))

    return render_template('client_add.html', clients = MPI.query.all() )

@chart.route('/client_update', methods=["GET", "POST"])
@login_required
def client_update():

    update_check = secure_update()
    if update_check:
        return update_check

    action = request.form.get("action")

    if request.method != "POST":
        clients = db.session.query(MPI).all()
        return render_template('get_client_id.html', clients=clients)

    client_id = request.form.get("client_id")

    # -----------------------------
    # ACTION: SELECT CLIENT RECORDS
    # -----------------------------
    if action == "select":

        client = db.session.query(MPI).filter(MPI.client_id == client_id).first()

        if not client:
            return render_template('chart.html')

        return render_template(
            'client_update.html',
            client_id=client_id,
            client=client
        )

    # -----------------------------
    # ACTION: UPDATE RECORD
    # -----------------------------
    if action == "update":

        client_update = (
            db.session.query(MPI)
            .filter(MPI.client_id == client_id)
            .first()
        )

        if not client_update:
            return render_template('chart.html')

        client_update.fname    = request.form.get("fname")
        client_update.lname    = request.form.get("lname")
        client_update.dob      = request.form.get("dob")
        client_update.ssn      = request.form.get("ssn")
        client_update.medicaid = request.form.get("medicaid")

        db.session.commit()
        return redirect(url_for('chart.clients'))

    # -----------------------------
    # ACTION: DELETE RECORD
    # -----------------------------
    if action == "delete":

        mpi = (
            db.session.query(MPI)
            .filter(MPI.client_id == client_id)
            .first()
        )

        if not mpi:
            return render_template('chart.html')

        remove_check = secure_remove()
        if remove_check:
            return remove_check

        db.session.delete(mpi)
        db.session.commit()

        return redirect(url_for('chart.clients'))

    # -----------------------------
    # fallback safety
    # -----------------------------
    return redirect(url_for('chart.clients'))

@chart.route('/client_update_photo', methods=["GET", "POST"])
@login_required
def client_update_photo():

    update_check = secure_update()
    if update_check:
        return update_check

    action = request.form.get("action")

    if request.method != "POST":
        clients = db.session.query(MPI).all()
        return render_template('get_client_id.html', clients=clients)

    client_id = request.form.get("client_id")

    if action == "select":

        client = db.session.query(MPI).filter(MPI.client_id == client_id).first()

        if not client:
            return render_template('chart.html')

        return render_template(
            'client_update_photo.html',
            client_id=client_id,
            client=client
        )

    return redirect(url_for('chart.face_sheet',
                            client_id=client_id))

@chart.route('/client_photo/<filename>')
@login_required
def client_photo(filename):

    from flask import send_from_directory

    return send_from_directory(
        '/opt/flask-app/photos',
        filename
    )

@chart.route('/client_photo_upload/<int:client_id>', methods=["POST"])
@login_required
def client_photo_upload(client_id):

    import os
    from werkzeug.utils import secure_filename

    UPLOAD_FOLDER = '/opt/flask-app/photos'
    ALLOWED_EXTENSIONS = {'jpg', 'jpeg'}

    file = request.files.get('file')

    if not file or file.filename == '':
        return "No file uploaded", 400

    if '.' not in file.filename:
        return "Invalid file type", 400

    extension = file.filename.rsplit('.', 1)[1].lower()

    if extension not in ALLOWED_EXTENSIONS:
        return "Invalid file type", 400

    filename = secure_filename(f"{client_id}.jpg")

    save_path = os.path.join(UPLOAD_FOLDER, filename)

    file.save(save_path)

    return redirect(url_for('chart.face_sheet',
                            client_id=client_id))

@chart.route('/demographics', methods=["GET", "POST"])
@login_required
def demographics():

    user = get_user()
    fullname = user.fullname
    staff_id = user.user_id
    today = db.session.query(func.current_date()).scalar()

    form = request.form
    action = form.get("action")

    clients = db.session.execute(
        select(MPI.client_id, MPI.fname, MPI.lname)
    )

    if request.method == "POST":

        client_id = form.get("client_id")

        # -------------------------
        # SELECT CLIENT / LOAD VIEW
        # -------------------------
        if action == "select" and client_id:

            client = get_client(client_id)
            place_str = get_placement(client_id)

            return render_template(
                'demographics.html',
                client_id     = client_id,
                client        = client,
                start_date    = today,
                place_str     = place_str,
                units         = Unit.query.all(),
                fullname      = fullname,
                bool_list     = BOOLEAN,
                sex_list      = SEX,
                gender_list   = GENDER,
                orient_list   = ORIENTATION,
                race_list     = RACE, 
                race_detail   = RACE_DETAIL, 
                asian_list    = ASIAN_DETAIL, 
                pacific_list  = PACIFIC_DETAIL, 
                ethnic_list   = ETHNICITY, 
                ethnic_detail = ETHNICITY_DETAIL, 
                marital_list  = MARITAL, 
                parent_list   = PARENT, 
                house_list    = HOUSEHOLD, 
                lang_list     = LANGUAGE, 
                religion_list = RELIGION
            )

        # -------------------------
        # INSERT DEMOGRAPHICS DATA
        # -------------------------
        if action == "insert":

            result = get_unit(form.get("unit_lname", ""))
            if not isinstance(result, tuple):
                return result

            unit_id, unit_lname = result

            track_id = request.form.get("track_id")
            track_id = int(track_id) if track_id else 1

            demo = Demographics(
                client_id         = client_id,
                unit_id           = unit_id,
                unit_lname        = unit_lname,
                alias             = form.get("alias"),
                allergy           = form.get("allergy"),
                address           = form.get("address"),
                apartment         = form.get("apartment"),
                city              = form.get("city"),
                state             = form.get("state"),
                post_code         = form.get("post_code"),
                phone             = form.get("phone"),
                phone_mobile      = form.get("phone_mobile"),
                phone_other       = form.get("phone_other"),
                sex_birth         = form.get("sex_birth"),
                sex_gender        = form.get("sex_gender"),
                sex_orientation   = form.get("sex_orientation"),
                race              = form.get("race"),
                race_detail       = form.get("race_detail"),
                asian_detail      = form.get("asian_detail"),
                pacific_detail    = form.get("pacific_detail"),
                ethnicity         = form.get("ethnicity"),
                ethnicity_detail  = form.get("ethnicity_detail"),
                place_of_birth    = form.get("place_of_birth"),
                citizen           = form.get("citizen"),
                veteran           = form.get("veteran"),
                language_spoken   = form.get("language_spoken"),
                religion          = form.get("religion"),
                marital_status    = form.get("marital_status"),
                parental_status   = form.get("parental_status"),
                household         = form.get("household"),
                staff_id          = staff_id,
                staff_name        = fullname
            )

            db.session.add(demo)
            db.session.commit()

            return redirect(url_for('chart.demographics_view', client_id=client_id))

    return render_template('get_client_id.html', clients=clients)

@chart.route('/demographics_update', methods=["GET", "POST"])
@login_required
def demographics_update():

    user = get_user()
    fullname = user.fullname
    form = request.form

    update_check = secure_update()
    if update_check:
        return update_check

    clients = db.session.query(MPI).all()

    if request.method != "POST":
        return render_template('get_client_id.html', clients=clients)

    action    = form.get("action")
    client_id = form.get("client_id")
    rec_id    = form.get("rec_id")

    # -----------------------------
    # ACTION: SELECT CLIENT RECORDS
    # -----------------------------
    if action == "select":

        client = get_client(client_id)

        results = (
            db.session.query(Demographics)
            .filter(Demographics.client_id == client_id)
            .order_by(Demographics.rec_id)
            .all()
        )

        return render_template(
            'demographics_select.html',
            client_id=client_id,
            client=client,
            records=results
        )

    # -----------------------------
    # ACTION: LOAD RECORD FOR EDIT
    # -----------------------------
    if action == "modify":

        client = get_client(client_id)
        place_str = get_placement(client_id)

        record = (
            db.session.query(Demographics)
            .filter(Demographics.rec_id == rec_id)
            .first()
        )

        return render_template(
            'demographics_update.html',
            rec_id        = rec_id,
            client_id     = client_id,
            client        = client,
            record        = record,
            place_str     = place_str,
            units         = Unit.query.all(),
            fullname      = fullname,
            bool_list     = BOOLEAN,
            sex_list      = SEX,
            gender_list   = GENDER,
            orient_list   = ORIENTATION,
            race_list     = RACE, 
            race_detail   = RACE_DETAIL, 
            asian_list    = ASIAN_DETAIL, 
            pacific_list  = PACIFIC_DETAIL, 
            ethnic_list   = ETHNICITY, 
            ethnic_detail = ETHNICITY_DETAIL, 
            marital_list  = MARITAL, 
            parent_list   = PARENT, 
            house_list    = HOUSEHOLD, 
            lang_list     = LANGUAGE, 
            religion_list = RELIGION
        )

    # -----------------------------
    # ACTION: UPDATE RECORD
    # -----------------------------
    if action == "update":

        demo = (
            db.session.query(Demographics)
            .filter(Demographics.rec_id == rec_id)
            .first()
        )

        result = get_unit(request.form.get("unit_lname", ""))
        if not isinstance(result, tuple):
            return result

        unit_id, unit_lname = result

        # demo.client_id         = client_id
        demo.unit_id           = unit_id
        demo.unit_lname        = unit_lname
        demo.alias             = form.get("alias")
        demo.allergy           = form.get("allergy")
        demo.address           = form.get("address")
        demo.apartment         = form.get("apartment")
        demo.city              = form.get("city")
        demo.state             = form.get("state")
        demo.post_code         = form.get("post_code")
        demo.phone             = form.get("phone")
        demo.phone_mobile      = form.get("phone_mobile")
        demo.phone_other       = form.get("phone_other")
        demo.sex_birth         = form.get("sex_birth")
        demo.sex_gender        = form.get("sex_gender")
        demo.sex_orientation   = form.get("sex_orientation")
        demo.place_of_birth    = form.get("place_of_birth")
        demo.marital_status    = form.get("marital_status")
        demo.race              = form.get("race")
        demo.race_detail       = form.get("race_detail")
        demo.asian_detail      = form.get("asian_detail")
        demo.pacific_detail    = form.get("pacific_detail")
        demo.ethnicity         = form.get("ethnicity")
        demo.ethnicity_detail  = form.get("ethnicity_detail")
        demo.language_spoken   = form.get("language_spoken")
        demo.religion          = form.get("religion")
        demo.citizen           = form.get("citizen")
        demo.veteran           = form.get("veteran")
        demo.parental_status   = form.get("parental_status")
        demo.household         = form.get("household")
        demo.time_update       = datetime.now()
        demo.update_by         = fullname

        db.session.commit()
        # return redirect(url_for('chart.demographics_view', client_id=client_id))
        return redirect(url_for('chart.face_sheet', client_id=client_id))

    # -----------------------------
    # Fallback Safety
    # -----------------------------
    return redirect(url_for('chart.demographics_view', client_id=client_id))

@chart.route('/demographics_view', methods=["GET", "POST"])
@login_required
def demographics_view():

    sth = select(MPI.client_id, MPI.fname, MPI.lname).select_from(MPI)
    clients = db.session.execute(sth)

    client_id  = request.values.get("client_id")

    if client_id:

            client = db.session.query(MPI.fname, MPI.lname, MPI.dob, MPI.ssn).filter(MPI.client_id == client_id).first()
            query = db.session.query(Demographics).filter(and_(Demographics.client_id == client_id))
            results = query.all()
            return render_template('demographics_view.html', results=results, client_id=client_id, client=client)

    return render_template('get_client_id.html', clients=clients)

@chart.route('/diagnosis', methods=["GET", "POST"])
@login_required
def diagnosis():

    user = get_user()
    fullname = user.fullname
    staff_id = user.user_id

    form = request.form
    action = form.get("action")

    clients = db.session.execute(
        select(MPI.client_id, MPI.fname, MPI.lname)
    )

    today = db.session.query(func.current_date()).scalar()

    if request.method == "POST":

        client_id = form.get("client_id")

        # -------------------------
        # SELECT CLIENT / LOAD VIEW
        # -------------------------
        if action == "select" and client_id:

            client = get_client(client_id)
            place_str = get_placement(client_id)

            history = db.session.query(
                Diagnosis.dsm5,
                Diagnosis.icd10,
                Diagnosis.start_date,
                Diagnosis.end_date
            ).filter(
                Diagnosis.client_id == client_id
            ).order_by(Diagnosis.rec_id).all()

            dsm5_codes, icd10_codes = get_diag_lists()

            return render_template(
                'diagnosis.html',
                client_id  = client_id,
                client     = client,
                start_date = today,
                place_str  = place_str,
                units      = Unit.query.all(),
                dsm5       = dsm5_codes,
                icd10      = icd10_codes,
                history    = history,
                fullname   = fullname
            )

        # -------------------------
        # INSERT NEW DIAGNOSIS
        # -------------------------
        if action == "insert":

            result = get_unit(form.get("unit_lname", ""))
            if not isinstance(result, tuple):
                return result

            unit_id, unit_lname = result

            diag = Diagnosis(
                client_id  = client_id,
                unit_id    = unit_id,
                unit_lname = unit_lname,
                staff_id   = staff_id,
                staff_name = fullname,
                dsm5       = form.get("dsm5"),
                icd10      = form.get("icd10"),
                notebody   = form.get("notebody"),
                start_date = form.get("start_date"),
                end_date   = form.get("end_date") or None
            )

            db.session.add(diag)
            db.session.commit()

            return redirect(url_for('chart.diagnosis_view', client_id=client_id))

    return render_template('get_client_id.html', clients=clients)

@chart.route('/diagnosis_update', methods=["GET", "POST"])
@login_required
def diagnosis_update():

    user = get_user()
    fullname = user.fullname

    update_check = secure_update()
    if update_check:
        return update_check

    clients = db.session.query(MPI).all()

    if request.method != "POST":
        return render_template('get_client_id.html', clients=clients)

    # -----------------------------
    # Unified Inputs
    # -----------------------------
    action    = request.form.get("action")
    client_id = request.form.get("client_id")
    rec_id    = request.form.get("rec_id")

    # -----------------------------
    # ACTION: SELECT CLIENT RECORDS
    # -----------------------------
    if action == "select":

        client = get_client(client_id)

        results = (
            db.session.query(Diagnosis)
            .filter(Diagnosis.client_id == client_id)
            .order_by(Diagnosis.rec_id)
            .all()
        )

        return render_template(
            'diagnosis_select.html',
            client_id=client_id,
            client=client,
            records=results
        )

    # -----------------------------
    # ACTION: LOAD RECORD FOR EDIT
    # -----------------------------
    if action == "modify":

        client = get_client(client_id)
        place_str = get_placement(client_id)

        record = (
            db.session.query(Diagnosis)
            .filter(Diagnosis.rec_id == rec_id)
            .first()
        )

        history = (
            db.session.query(
                Diagnosis.dsm5,
                Diagnosis.icd10,
                Diagnosis.start_date,
                Diagnosis.end_date
            )
            .filter(Diagnosis.client_id == client_id)
            .order_by(Diagnosis.rec_id)
            .all()
        )

        dsm5_codes, icd10_codes = get_diag_lists()

        return render_template(
            'diagnosis_update.html',
            rec_id=rec_id,
            client_id=client_id,
            client=client,
            record=record,
            place_str=place_str,
            units=Unit.query.all(),
            dsm5=dsm5_codes,
            icd10=icd10_codes,
            history=history,
            fullname=fullname
        )

    # -----------------------------
    # ACTION: UPDATE RECORD
    # -----------------------------
    if action == "update":

        diag = (
            db.session.query(Diagnosis)
            .filter(Diagnosis.rec_id == rec_id)
            .first()
        )

        if not diag:
            return render_template('chart.html')

        result = get_unit(request.form.get("unit_lname", ""))
        if not isinstance(result, tuple):
            return result

        unit_id, unit_lname = result

        diag.client_id   = client_id
        diag.unit_id     = unit_id
        diag.unit_lname  = unit_lname
        diag.start_date  = request.form.get("start_date")
        diag.end_date    = request.form.get("end_date")
        diag.dsm5        = request.form.get("dsm5")
        diag.icd10       = request.form.get("icd10")
        diag.notebody    = request.form.get("notebody")
        diag.time_update = datetime.now()
        diag.update_by   = fullname

        db.session.commit()
        return redirect(url_for('chart.diagnosis_view', client_id=client_id))

    # -----------------------------
    # ACTION: DELETE RECORD
    # -----------------------------
    if action == "delete":

        diag = (
            db.session.query(Diagnosis)
            .filter(Diagnosis.rec_id == rec_id)
            .first()
        )

        if not diag:
            return render_template('chart.html')

        remove_check = secure_remove()
        if remove_check:
            return remove_check

        db.session.delete(diag)
        db.session.commit()

        return render_template('chart.html')

    # -----------------------------
    # fallback safety
    # -----------------------------
    return redirect(url_for('chart.diagnosis_view', client_id=client_id))

@chart.route('/diagnosis_view', methods=["GET", "POST"])
@login_required
def diagnosis_view():

    sth = select(MPI.client_id, MPI.fname, MPI.lname).select_from(MPI)
    clients = db.session.execute(sth)

    client_id = request.values.get("client_id") 

    if client_id:

        client = get_client(client_id)

        history = db.session.query(
            Diagnosis.dsm5,
            Diagnosis.icd10,
            Diagnosis.start_date,
            Diagnosis.end_date,
            Diagnosis.notebody,
            Diagnosis.staff_name
        ).filter(Diagnosis.client_id == client_id).order_by(Diagnosis.rec_id).all()

        return render_template(
            'diagnosis_view.html',
            client_id=client_id,
            client=client,
            history=history
        )

    return render_template('get_client_id.html', clients=clients)

@chart.route('/entitlements', methods=["GET", "POST"])
@login_required
def entitlements():

    user = get_user()
    fullname = user.fullname
    staff_id = user.user_id
    today = db.session.query(func.current_date()).scalar()

    form = request.form
    action                            = form.get("action")

    clients = db.session.execute(
        select(MPI.client_id, MPI.fname, MPI.lname)
    )

    if request.method == "POST":

        client_id                            = form.get("client_id")

        # -------------------------
        # SELECT CLIENT / LOAD VIEW
        # -------------------------
        if action == "select" and client_id:

            client = get_client(client_id)
            place_str = get_placement(client_id)

            return render_template(
                'entitlements.html',
                client_id     = client_id,
                client        = client,
                start_date    = today,
                place_str     = place_str,
                units         = Unit.query.all(),
                fullname      = fullname,
                bool_list     = BOOLEAN
            )

        # -------------------------
        # INSERT ENTITLEMENTS DATA
        # -------------------------
        if action == "insert":

            result = get_unit(form.get("unit_lname", ""))
            if not isinstance(result, tuple):
                return result

            unit_id, unit_lname = result

            track_id = request.form.get("track_id")
            track_id = int(track_id) if track_id else 1

            ent = Entitlements(
                client_id         = client_id,
                unit_id           = unit_id,
                unit_lname        = unit_lname,
                track_id          = track_id,
                social_security   = form.get("social_security"),
                ssi               = form.get("ssi"),
                ssd               = form.get("ssd"),
                medicaid          = form.get("medicaid"),
                managed_care      = form.get("managed_care"),
                medicare          = form.get("medicare"),
                medicare_id       = form.get("medicare_id"),
                snap              = form.get("snap"),
                snap_id           = form.get("snap_id"),
                snap_amt          = form.get("snap_amt"),
                public_assistance = form.get("public_assistance"),
                public_amount     = form.get("public_amount"),
                wages             = form.get("wages"),
                insurance         = form.get("insurance"),
                insurance_carrier = form.get("insurance_carrier"),
                insurance_id      = form.get("insurance_id"),
                alimony           = form.get("alimony"),
                pension           = form.get("pension"),
                unemployment      = form.get("unemployment"),
                workers_comp      = form.get("workers_comp"),
                retirement_income = form.get("retirement_income"),
                child_support     = form.get("child_support"),
                other_income      = form.get("other_income"),
                wic               = form.get("wic"),
                tanf              = form.get("tanf"),
                section_8         = form.get("section_8"),
                other_non_cash    = form.get("other_non_cash"),
                va_disability     = form.get("va_disability"),
                va_medical        = form.get("va_medical"),
                staff_id          = staff_id,
                staff_name        = fullname
            )

            db.session.add(ent)
            db.session.commit()

            return redirect(url_for('chart.entitlements_view', client_id=client_id))

    return render_template('get_client_id.html', clients=clients)

@chart.route('/entitlements_update', methods=["GET", "POST"])
@login_required
def entitlements_update():

    user = get_user()
    fullname = user.fullname
    form = request.form

    update_check = secure_update()
    if update_check:
        return update_check

    clients = db.session.query(MPI).all()

    if request.method != "POST":
        return render_template('get_client_id.html', clients=clients)

    action    = form.get("action")
    client_id = form.get("client_id")
    rec_id    = form.get("rec_id")

    # -----------------------------
    # ACTION: SELECT CLIENT RECORDS
    # -----------------------------
    if action == "select":

        client = get_client(client_id)

        results = (
            db.session.query(Entitlements)
            .filter(Entitlements.client_id == client_id)
            .order_by(Entitlements.rec_id)
            .all()
        )

        return render_template(
            'entitlements_select.html',
            client_id=client_id,
            client=client,
            records=results
        )

    # -----------------------------
    # ACTION: LOAD RECORD FOR EDIT
    # -----------------------------
    if action == "modify":

        client = get_client(client_id)
        place_str = get_placement(client_id)

        record = (
            db.session.query(Entitlements)
            .filter(Entitlements.rec_id == rec_id)
            .first()
        )

        return render_template(
            'entitlements_update.html',
            rec_id        = rec_id,
            client_id     = client_id,
            client        = client,
            record        = record,
            place_str     = place_str,
            units         = Unit.query.all(),
            fullname      = fullname,
            bool_list     = BOOLEAN
        )

    # -----------------------------
    # ACTION: UPDATE RECORD
    # -----------------------------
    if action == "update":

        ent = (
            db.session.query(Entitlements)
            .filter(Entitlements.rec_id == rec_id)
            .first()
        )

        result = get_unit(request.form.get("unit_lname", ""))
        if not isinstance(result, tuple):
            return result

        unit_id, unit_lname = result

        ent.unit_id           = unit_id
        ent.unit_lname        = unit_lname
        ent.social_security   = form.get("social_security")
        ent.ssi               = form.get("ssi")
        ent.ssd               = form.get("ssd")
        ent.medicaid          = form.get("medicaid")
        ent.managed_care      = form.get("managed_care")
        ent.medicare          = form.get("medicare")
        ent.medicare_id       = form.get("medicare_id")
        ent.snap              = form.get("snap")
        ent.snap_id           = form.get("snap_id")
        ent.snap_amt          = form.get("snap_amt")
        ent.public_assistance = form.get("public_assistance")
        ent.public_amount     = form.get("public_amount")
        ent.wages             = form.get("wages")
        ent.insurance         = form.get("insurance")
        ent.insurance_carrier = form.get("insurance_carrier")
        ent.insurance_id      = form.get("insurance_id")
        ent.alimony           = form.get("alimony")
        ent.pension           = form.get("pension")
        ent.unemployment      = form.get("unemployment")
        ent.workers_comp      = form.get("workers_comp")
        ent.retirement_income = form.get("retirement_income")
        ent.child_support     = form.get("child_support")
        ent.other_income      = form.get("other_income")
        ent.wic               = form.get("wic")
        ent.tanf              = form.get("tanf")
        ent.section_8         = form.get("section_8")
        ent.other_non_cash    = form.get("other_non_cash"),
        ent.va_disability     = form.get("va_disability")
        ent.va_medical        = form.get("va_medical")
        ent.time_update       = datetime.now()
        ent.update_by         = fullname

        db.session.commit()
        return redirect(url_for('chart.face_sheet', client_id=client_id))

    # -----------------------------
    # Fallback Safety
    # -----------------------------
    return redirect(url_for('chart.entitlements_view', client_id=client_id))

@chart.route('/entitlements_view', methods=["GET", "POST"])
@login_required
def entitlements_view():

    sth = select(MPI.client_id, MPI.fname, MPI.lname).select_from(MPI)
    clients = db.session.execute(sth)

    client_id  = request.values.get("client_id")

    if client_id:

            client = db.session.query(MPI.fname, MPI.lname, MPI.dob, MPI.ssn, MPI.medicaid).filter(MPI.client_id == client_id).first()
            query = db.session.query(Entitlements).filter(and_(Entitlements.client_id == client_id))
            results = query.all()
            return render_template('entitlements_view.html', results=results, client_id=client_id, client=client)

    return render_template('get_client_id.html', clients=clients)

@chart.route('/error_page')
@login_required
def error_page():

    error = request.args.get(
        'error',
        'An unknown error occurred.'
    )

    return render_template(
        'error.html',
        error=error
    )

@chart.route('/face_sheet', methods=["GET", "POST"])
@login_required
def face_sheet():

    clients = db.session.query(MPI).order_by(MPI.lname, MPI.fname).all()

    client_id = (
        request.form.get("client_id") or
        request.args.get("client_id")
    )

    if client_id:

        client = db.session.query(MPI).filter(MPI.client_id == client_id).first()

        places = get_rows(Placement, client_id, Placement.start_date)
        demos  = get_rows(Demographics, client_id, Demographics.rec_id, latest=True)
        diags  = get_rows(Diagnosis, client_id, Diagnosis.start_date)
        ents   = get_rows(Entitlements, client_id, Entitlements.rec_id, latest=True)
        functs = get_rows(Functional, client_id, Functional.start_date)
        plans  = get_rows(SupportPlan, client_id, SupportPlan.start_date)
        notes  = get_rows(ProgressNote, client_id, ProgressNote.notedate)
        stays  = get_rows(Inpatient, client_id, Inpatient.start_date)

        for plan in plans:

            goal_fields = [
                plan.goal_one_header,
                plan.goal_two_header,
                plan.goal_three_header,
                plan.goal_four_header
            ]

            plan.goals = [goal for goal in goal_fields if goal]

        return render_template(
            'face_sheet.html',
            client = client,
            places = places,
            demos  = demos,
            diags  = diags,
            ents   = ents,
            functs = functs,
            plans  = plans,
            notes  = notes,
            stays  = stays
        )

    return render_template(
        'get_client_only.html',
        clients=clients
    )

@chart.route('/functional_get', methods=["GET"])
@login_required
def functional_get():

    client_id = request.args.get("client_id")
    rec_id    = request.args.get("rec_id")

    if client_id and rec_id:

        resident = (
            db.session.query(MPI.fname, MPI.lname)
            .filter(MPI.client_id == client_id)
            .first()
        )

        result = (
            db.session.query(Functional)
            .filter(
                Functional.client_id == client_id,
                Functional.rec_id == rec_id
            )
            .first()
        )

        if not result:
            return redirect(url_for('chart.functional_view', client_id=client_id))

        return render_template(
            'functional_view.html',
            resident=resident,
            skills=[result],
            client_id=client_id
        )

    return redirect(url_for('chart.functional_view'))

@chart.route('/functional', methods=["GET", "POST"])
@login_required
def functional():

    user = get_user()
    fullname = user.fullname
    staff_id = user.user_id

    form = request.form
    action = form.get("action")

    clients = db.session.execute(
        select(MPI.client_id, MPI.fname, MPI.lname)
    )

    today = db.session.query(func.current_date()).scalar()

    sth = select(FunctionalSkills.skill_area).select_from(FunctionalSkills)
    skills = db.session.execute(sth)

    if request.method == "POST":

        client_id = form.get("client_id")
        client = get_client(client_id)

        # -------------------------
        # SELECT CLIENT / LOAD VIEW
        # -------------------------
        if action == "select" and client_id:

            place_str = get_placement(client_id)

            return render_template('functional.html',
                                   client_id = client_id,
                                   client    = client,
                                   skills    = skills,
                                   startdate = today,
                                   units     = Unit.query.all(),
                                   place_str = place_str,
                                   fullname  = fullname)

        # -------------------------
        # INSERT NEW FUNCTIONAL
        # -------------------------
        if action == "insert":

            result = get_unit(form.get("unit_lname", ""))
            if not isinstance(result, tuple):
                return result

            unit_id, unit_lname = result

            funct = Functional(
                client_id  = request.form.get("client_id"),
                unit_id    = unit_id,
                unit_lname = unit_lname,
                staff_id   = staff_id,
                staff_name  = fullname,
                start_date = request.form.get("start_date"),
                end_date   = request.form.get("end_date"),
                skill_level= request.form.get("skill_level"),
                skill_area = request.form.get("skill_area"),
                skill_text = request.form.get("skill_text"),
                time_in    = datetime.now()
            )
            db.session.add(funct)
            db.session.commit()
            return redirect(url_for('chart.functional_view', client_id=client_id))

    return render_template('get_client_id.html', clients=clients)

@chart.route('/functional_update', methods=["GET", "POST"])
@login_required
def functional_update():

    user = get_user()
    fullname = user.fullname
    staff_id = user.user_id
    today, past_date = get_date(90)
    # clients = db.session.query(MPI).all()
    clients = db.session.execute(
        select(MPI.client_id, MPI.fname, MPI.lname)
    ).mappings().all()

    update_check = secure_update()
    if update_check:
        return update_check

    if request.method != "POST":
        return render_template('get_client_id.html', clients=clients)

    # -----------------------------
    # unified inputs
    # -----------------------------
    action     = request.form.get("action")
    client_id  = request.form.get("client_id")
    rec_id     = request.form.get("rec_id")
    start_date = request.form.get("start_date")
    end_date   = request.form.get("end_date")

    # -----------------------------
    # ACTION: SELECT CLIENT RECORDS
    # -----------------------------
    if action == "select":

        client = get_client(client_id)

        results = (
            db.session.query(Functional)
            .filter(Functional.client_id == client_id)
        )

        if start_date:
            results = results.filter(Functional.start_date >= start_date)

        if end_date:
            results = results.filter(Functional.start_date <= end_date)

        results = results.order_by(Functional.rec_id).all()

        return render_template(
            'functional_select.html',
            client_id = client_id,
            client    = client,
            records   = results
        )

    # -----------------------------
    # ACTION: LOAD RECORD FOR EDIT
    # -----------------------------
    if action == "modify":

        client = get_client(client_id)
        place_str = get_placement(client_id)

        record = (
            db.session.query(Functional)
            .filter(Functional.rec_id == rec_id)
            .first()
        )

        # query_results = db.session.query(FunctionalSkills).all()
        # skills_list = [skill for skill in query_results]
        # sorted_skills = sorted(skills_list, key=lambda skill: skill.rec_id)

        sorted_skills = (
            db.session.query(FunctionalSkills)
            .order_by(FunctionalSkills.rec_id)
            .all()
        )

        history = (
            db.session.query(
                Functional.skill_area,
                Functional.start_date,
                Functional.end_date
            )
            .filter(Functional.client_id == client_id)
            .order_by(Functional.rec_id)
            .all()
        )

        return render_template(
            'functional_update.html',
            rec_id    = rec_id,
            client_id = client_id,
            client    = client,
            skills    = sorted_skills,
            record    = record,
            place_str = place_str,
            units     = Unit.query.all(),
            history   = history,
            fullname  = fullname
        )

    # -----------------------------
    # ACTION: UPDATE RECORD
    # -----------------------------
    if action == "update":

        functional_update = (
            db.session.query(Functional)
            .filter(Functional.rec_id == rec_id)
            .first()
        )

        if not functional_update:
            return render_template('chart.html')

        result = get_unit(request.form.get("unit_lname", ""))
        if not isinstance(result, tuple):
            return result

        unit_id, unit_lname = result

        functional_update.time_update = datetime.now()
        functional_update.update_by   = fullname
        functional_update.staff_id    = staff_id
        functional_update.start_date  = request.form.get("start_date")
        functional_update.end_date    = request.form.get("end_date")
        functional_update.skill_area  = request.form.get("skill_area")
        functional_update.skill_level = request.form.get("skill_level")
        functional_update.skill_text  = request.form.get("skill_text")
        functional_update.unit_id     = unit_id
        functional_update.unit_lname  = unit_lname

        db.session.commit()
        # return redirect(url_for('chart.functional_view', client_id=client_id))
        return redirect(url_for(
            'chart.functional_view',
            client_id  = client_id,
            start_date = request.form.get("start_date"),
            end_date   = request.form.get("end_date")
        ))

    # -----------------------------
    # ACTION: DELETE RECORD
    # -----------------------------
    if action == "delete":

        func = (
            db.session.query(Functional)
            .filter(Functional.rec_id == rec_id)
            .first()
        )

        if not func:
            return render_template('chart.html')

        remove_check = secure_remove()
        if remove_check:
            return remove_check

        db.session.delete(func)
        db.session.commit()

        return redirect(url_for('chart.functional_view', client_id=client_id, start_date=start_date, end_date=end_date))

    # -----------------------------
    # fallback safety
    # -----------------------------

    return redirect(url_for('chart.functional_view', client_id=client_id, start_date=start_date, end_date=end_date))

@chart.route('/functional_view', methods=["GET", "POST"])
@login_required
def functional_view():

    sth = select(MPI.client_id, MPI.fname, MPI.lname).select_from(MPI)
    clients = db.session.execute(sth)
    today, past_date = get_date(90)

    client_id  = request.values.get("client_id")
    start_date = request.values.get("start_date")
    end_date   = request.values.get("end_date")

    # apply defaults if missing (fixes redirect case)
    if not start_date:
        start_date = past_date

    if not end_date:
        end_date = today

    if client_id:

            resident = db.session.query(MPI.fname, MPI.lname).filter(MPI.client_id == client_id).first()
            query = db.session.query(Functional).filter(and_(Functional.client_id == client_id,
                                                               Functional.start_date >= start_date, 
                                                               Functional.start_date <= end_date))
            results = query.all()
            return render_template('functional_view.html', skills=results, client_id=client_id, resident=resident)

    return render_template('get_client.html', clients=clients, end_date=today, start_date=past_date)

@chart.route('/inpatient', methods=["GET", "POST"])
@login_required
def inpatient():

    user = get_user()
    fullname = user.fullname
    staff_id = user.user_id

    form = request.form
    action = form.get("action")

    clients = db.session.execute(
        select(MPI.client_id, MPI.fname, MPI.lname)
    )

    today = db.session.query(func.current_date()).scalar()

    if request.method == "POST":

        client_id = form.get("client_id")
        client = get_client(client_id)

        # -------------------------
        # SELECT CLIENT / LOAD VIEW
        # -------------------------
        if action == "select" and client_id:

            place_str = get_placement(client_id)

            return render_template('inpatient.html', 
                                   client_id = client_id,
                                   client    = client, 
                                   startdate = today, 
                                   units     = Unit.query.all(), 
                                   place_str = place_str, 
                                   fullname  = fullname)

        # -------------------------
        # INSERT INPATIENT RECORD
        # -------------------------
        if action == "insert":

            result = get_unit(form.get("unit_lname", ""))
            if not isinstance(result, tuple):
                return result
            unit_id, unit_lname = result

            client_row = db.session.query(MPI.fname, MPI.lname).filter(MPI.client_id == client_id).first()
            client = f"{client_row[0]} {client_row[1]}" if client_row else None

            end_date = request.form.get("end_date")
            if end_date == '':
                end_date = None
        
            track_id = request.form.get("track_id")
            track_id = int(track_id) if track_id else 1
        
            inpt = Inpatient(
                client_id      = client_id,
                client         = client,
                unit_id        = unit_id,
                unit_lname     = unit_lname,
                track_id       = track_id,
                visit_date     = request.form.get("visit_date"),
                hospital       = request.form.get("hospital"),
                address        = request.form.get("address"),
                staff_id       = staff_id,
                staff_name     = fullname,
                start_date     = request.form.get("start_date"),
                end_date       = end_date,
                hospital_type  = request.form.get("hospital_type"),
                voluntary      = request.form.get("voluntary"),
                staff_member   = request.form.get("staff_member"),
                staff_shift    = request.form.get("staff_shift"),
                staff_time     = request.form.get("staff_time"),
                eob            = request.form.get("eob"),
                state_hospital = request.form.get("state_hospital"),
                outcome        = request.form.get("outcome"),
                comment_text   = request.form.get("comment_text"),
                visit_reason   = request.form.get("visit_reason"),
                admit_date     = request.form.get("admit_date"),
                age            = request.form.get("age"),
                sex            = request.form.get("sex"),
                diagnosis      = request.form.get("diagnosis"),
                escort_type    = request.form.get("escort_type"),
                transport_type = request.form.get("transport_type"),
                complaint      = request.form.get("complaint"),
                time_update    = datetime.now(),
                update_by      = fullname
            )
            db.session.add(inpt)
            db.session.commit()
            return redirect(url_for('chart.inpatient_view', client_id = client_id))

    return render_template('get_client_id.html', clients=clients)

@chart.route('/inpatient_update', methods=["GET", "POST"])
@login_required
def inpatient_update():

    user = get_user()
    fullname = user.fullname
    today, past_date = get_date(90)

    clients = db.session.execute(
        select(MPI.client_id, MPI.fname, MPI.lname)
    ).mappings().all()

    update_check = secure_update()
    if update_check:
        return update_check

    # ---------------------------------
    # INITIAL PAGE LOAD
    # ---------------------------------

    if request.method != "POST":
        return render_template(
            'get_client_id.html',
            clients=clients
        )

    # ---------------------------------
    # UNIFIED INPUTS
    # ---------------------------------

    action = request.form.get("action")

    client_id = request.form.get(
        "client_id",
        type=int
    )

    rec_id = request.form.get(
        "rec_id",
        type=int
    )

    # ---------------------------------
    # ACTION: SELECT CLIENT RECORDS
    # ---------------------------------

    if action == "select":

        client = get_client(client_id)

        records = (
            db.session.query(Inpatient)
            .filter(Inpatient.client_id == client_id)
            .order_by(Inpatient.rec_id)
            .all()
        )

        return render_template(
            'inpatient_select.html',
            client_id=client_id,
            client=client,
            records=records
        )

    # ---------------------------------
    # ACTION: LOAD RECORD FOR EDIT
    # ---------------------------------

    if action == "modify":

        client = get_client(client_id)

        place_str = get_placement(client_id)

        record = db.session.get(
            Inpatient,
            rec_id
        )

        if not record:
            return render_template('chart.html')

        return render_template(
            'inpatient_update.html',
            rec_id=rec_id,
            client_id=client_id,
            client=client,
            records=record,
            place_str=place_str,
            units=Unit.query.all(),
            fullname=fullname
        )

    # ---------------------------------
    # ACTION: UPDATE RECORD
    # ---------------------------------

    if action == "update":

        inpt = db.session.get(
            Inpatient,
            rec_id
        )

        if not inpt:
            return render_template('chart.html')

        result = get_unit(
            request.form.get("unit_lname", "")
        )

        if not isinstance(result, tuple):
            return result

        unit_id, unit_lname = result

        end_date = request.form.get("end_date")

        if end_date == '':
            end_date = None

        inpt.unit_id        = unit_id
        inpt.unit_lname     = unit_lname
        inpt.visit_date     = request.form.get("visit_date")
        inpt.hospital       = request.form.get("hospital")
        inpt.address        = request.form.get("address")
        inpt.start_date     = request.form.get("start_date")
        inpt.end_date       = end_date
        inpt.hospital_type  = request.form.get("hospital_type")
        inpt.voluntary      = request.form.get("voluntary")
        inpt.staff_member   = request.form.get("staff_member")
        inpt.staff_shift    = request.form.get("staff_shift")
        inpt.staff_time     = request.form.get("staff_time")
        inpt.eob            = request.form.get("eob")
        inpt.state_hospital = request.form.get("state_hospital")
        inpt.outcome        = request.form.get("outcome")
        inpt.comment_text   = request.form.get("comment_text")
        inpt.visit_reason   = request.form.get("visit_reason")
        inpt.admit_date     = request.form.get("admit_date")
        inpt.age            = request.form.get("age")
        inpt.sex            = request.form.get("sex")
        inpt.diagnosis      = request.form.get("diagnosis")
        inpt.escort_type    = request.form.get("escort_type")
        inpt.transport_type = request.form.get("transport_type")
        inpt.complaint      = request.form.get("complaint")
        inpt.time_update    = datetime.now()
        inpt.update_by      = fullname

        db.session.commit()

        return redirect(url_for(
            'chart.inpatient_view',
            client_id=client_id,
            rec_id=rec_id
        ))

    # ---------------------------------
    # ACTION: DELETE RECORD
    # ---------------------------------

    if action == "delete":

        remove_check = secure_remove()

        if remove_check:
            return remove_check

        inpt = db.session.get(
            Inpatient,
            rec_id
        )

        if not inpt:
            return render_template('chart.html')

        db.session.delete(inpt)

        db.session.commit()

        return redirect(url_for(
            'chart.inpatient_view',
            client_id=client_id
        ))

    # ---------------------------------
    # FALLBACK SAFETY
    # ---------------------------------

    if client_id:

        return redirect(url_for(
            'chart.inpatient_view',
            client_id=client_id
        ))

    return render_template('chart.html')

@chart.route('/inpatient_view', methods=["GET", "POST"])
@login_required
def inpatient_view():

    clients = db.session.query(MPI).all()

    client_id = request.values.get("client_id")
    rec_id    = request.values.get("rec_id")

    # ---------------------------------
    # SELECT CLIENT
    # ---------------------------------
    if not client_id:
        return render_template('get_place.html', clients=clients)

    client = (
        db.session.query(MPI.fname, MPI.lname)
        .filter(MPI.client_id == client_id)
        .first()
    )

    # ---------------------------------
    # SELECT RECORD
    # ---------------------------------
    if client_id and not rec_id:

        records = (
            db.session.query(Inpatient)
            .filter(Inpatient.client_id == client_id)
            .all()
        )

        for record in records:
            if record.end_date is None:
                record.end_date = 'Active Inpatient'

        return render_template(
            'inpatient_select.html',
            client_id=client_id,
            client=client,
            records=records,
            mode="view"
        )

    # ---------------------------------
    # PRINT RECORD
    # ---------------------------------
    records = (
        db.session.query(Inpatient)
        .filter(Inpatient.rec_id == rec_id)
        .all()
    )

    # In the template: {{ record.end_date or 'Active Inpatient' }}

    return render_template(
        'inpatient_view.html',
        client_id=client_id,
        client=client,
        records=records
    )

@chart.route('/placement', methods=["GET", "POST"])
@login_required
def placement():

    user = get_user()
    fullname = user.fullname
    staff_id = user.user_id

    sth = select(MPI.client_id, MPI.fname, MPI.lname).select_from(MPI)
    clients = db.session.execute(sth)
    today   = db.session.query(func.current_date()).scalar()
    units = Unit.query.all()

    if request.method == "POST":

        end_date  = request.form.get("end_date") or None
        client_id = request.form.get("client_id")

        result = get_unit(request.form.get("unit_lname", ""))
        if not isinstance(result, tuple):
            return result
        unit_id, unit_lname = result
                
        place = Placement(
            client_id=client_id,
            unit_id=unit_id,
            unit_lname=unit_lname,
            address=request.form.get("address"),
            staff_id=staff_id,
            staff_name=fullname,
            start_date=request.form.get("start_date"),
            end_date=end_date,
            airs=request.form.get("airs"),
            bip=request.form.get("bip"),
            hud=request.form.get("hud"),
            input=func.now(),
            update=func.now()
            # input=datetime.now(),
            # update=datetime.now()
        )

        existing = (
            db.session.query(Placement)
            .filter(
                Placement.client_id == client_id,
                Placement.unit_id == unit_id,
                Placement.end_date == None
            )
            .first()
        )

        if existing:
            return redirect(
                url_for(
                    'chart.error_page',
                    error='Duplicate Active Placement.'
                )
            )

        db.session.add(place)
        db.session.commit()
        return render_template('chart.html')

    return render_template('placement.html', clients=clients, startdate=today, units = units, fullname=fullname)

@chart.route('/placement_update', methods=["GET", "POST"])
@login_required
def placement_update():

    user = get_user()
    fullname = user.fullname
    today, past_date = get_date(90)

    clients = db.session.execute(
        select(
            MPI.client_id,
            MPI.fname,
            MPI.lname
        )
    ).mappings().all()

    update_check = secure_update()

    if update_check:
        return update_check

    # ---------------------------------
    # INITIAL PAGE LOAD
    # ---------------------------------

    if request.method != "POST":

        return render_template(
            'get_client_id.html',
            clients=clients
        )

    # ---------------------------------
    # UNIFIED INPUTS
    # ---------------------------------

    action = request.form.get("action")

    client_id = request.form.get(
        "client_id",
        type=int
    )

    rec_id = request.form.get(
        "rec_id",
        type=int
    )

    # ---------------------------------
    # ACTION: SELECT CLIENT RECORDS
    # ---------------------------------

    if action == "select":

        client = get_client(client_id)

        records = (
            db.session.query(Placement)
            .filter(
                Placement.client_id == client_id
            )
            .order_by(
                Placement.rec_id
            )
            .all()
        )

        return render_template(
            'placement_select.html',
            client_id = client_id,
            client    = client,
            places    = records
        )

    # ---------------------------------
    # ACTION: LOAD RECORD FOR EDIT
    # ---------------------------------

    if action == "modify":

        client = get_client(client_id)

        record = db.session.get(
            Placement,
            rec_id
        )

        if not record:
            return render_template('chart.html')

        return render_template(
            'placement_update.html',
            rec_id    = rec_id,
            client_id = client_id,
            client    = client,
            place     = record,
            uname     = record.unit_lname,
            end_date  = record.end_date,
            fullname  = fullname,
            units     = Unit.query.all()
        )

    # ---------------------------------
    # ACTION: UPDATE RECORD
    # ---------------------------------

    if action == "update":

        place = db.session.get(
            Placement,
            rec_id
        )

        if not place:
            return render_template('chart.html')

        result = get_unit(
            request.form.get(
                "unit_lname",
                ""
            )
        )

        if not isinstance(result, tuple):
            return result

        unit_id, unit_lname = result

        start_date = request.form.get(
            "start_date"
        )

        end_date = request.form.get(
            "end_date"
        )

        if end_date == '':
            end_date = None

        place.start_date = start_date
        place.unit_lname = unit_lname
        place.unit_id    = unit_id
        place.end_date   = end_date

        db.session.commit()

        return redirect(url_for(
            'chart.placement_view',
            client_id = client_id
        ))

    # ---------------------------------
    # ACTION: DELETE RECORD
    # ---------------------------------

    if action == "delete":

        remove_check = secure_remove()

        if remove_check:
            return remove_check

        place = db.session.get(
            Placement,
            rec_id
        )

        if not place:
            return render_template('chart.html')

        db.session.delete(place)

        db.session.commit()

        return redirect(url_for(
            'chart.placement_view',
            client_id = client_id,
            rec_id    = rec_id
        ))

    # ---------------------------------
    # FALLBACK SAFETY
    # ---------------------------------

    if client_id:

        return redirect(url_for(
            'chart.placement_view',
            client_id = client_id,
            rec_id    = rec_id
        ))

    return render_template('chart.html')

@chart.route('/placement_view', methods=["GET", "POST"])
@login_required
def placement_view():

    sth = select(MPI.client_id, MPI.fname, MPI.lname).select_from(MPI)
    clients = db.session.execute(sth)

    client_id = request.values.get("client_id")

    if client_id:

        client = get_client(client_id)

        history = db.session.query(
            Placement.unit_lname,
            Placement.staff_name,
            Placement.start_date,
            Placement.end_date
        ).filter(Placement.client_id == client_id).order_by(Placement.rec_id).all()

        return render_template(
            'placement_view.html',
            client_id = client_id,
            client    = client,
            places    = history
        )

    return render_template('get_client_id.html', clients=clients)

@chart.route('/progress_get', methods=["GET", "POST"])
@login_required
def progress_get():  

    client_id = request.args.get("client_id")
    rec_id = request.args.get("rec_id")

    if client_id and rec_id:
    
        resident = db.session.query(MPI.fname, MPI.lname).filter(MPI.client_id == client_id).first()

        result = (
            db.session.query(ProgressNote)
            .filter(
                ProgressNote.client_id == client_id,
                ProgressNote.rec_id == rec_id
            )
            .all()
        )

        if not result:
            return redirect(url_for('chart.progress_view', client_id=client_id))

        return render_template('progress_view.html', resident=resident, notes=result)

    return redirect(url_for('chart.progress_view'))

@chart.route('/progress_note', methods=["GET", "POST"])
@login_required
def progress_note():

    user = get_user()
    fullname = user.fullname
    staff_id = user.user_id

    form = request.form
    action = form.get("action")

    clients = db.session.execute(
        select(MPI.client_id, MPI.fname, MPI.lname)
    )

    today = db.session.query(func.current_date()).scalar()

    if request.method == "POST":

        client_id = form.get("client_id")
        client = get_client(client_id)

        # -------------------------
        # SELECT CLIENT / LOAD VIEW
        # -------------------------
        if action == "select" and client_id:

            place_str = get_placement(client_id)
            goal_fields = ["goal_one_header", "goal_two_header", "goal_three_header", "goal_four_header"]
            goals = []
            support_plans = SupportPlan.query.filter(SupportPlan.client_id == client_id).all()

            for plan in support_plans:
                for field in goal_fields:
                    goal_header = getattr(plan, field, None)  # Dynamically get goal field
                    if goal_header:  # Only add if it exists
                        goals.append({"rec_id": plan.rec_id, "goal_header": goal_header})

        # insert() emulates Perl's unshift() (insert Case Note at the beginning)
            goals.insert(0, {"rec_id": 0, "goal_header": "[0] CN Case Note"})

            return render_template('progress_note.html', 
                client_id = client_id, 
                client    = client, 
                notedate  = today, 
                place_str = place_str,
                units     = Unit.query.all(), 
                fullname  = fullname,
                goals     = goals)

        # -------------------------
        # INSERT PROGRESS NOTE
        # -------------------------
        if action == "insert":

            result = get_unit(form.get("unit_lname", ""))
            if not isinstance(result, tuple):
                return result
            unit_id, unit_lname = result

            record  = request.form.get("goal_header")
            result  = re.split(r'--', record)
            plan_id = result[0].strip()
            goal    = result[1].strip()

            match = re.match(r'\[(\d+)\]\s+([A-Z]+)', goal)
            if match:
                medicaid = int(match.group(1))
                acronym = match.group(2)
            else:
                medicaid = 0
                acronym = 'CN'

            esof_name = request.form.get("esof_name")
            esof_date = today if esof_name else None

            note = ProgressNote(client_id         = form.get("client_id"),
                                chart             = form.get("chart"),
                                unit_id           = unit_id,
                                unit_lname        = unit_lname,
                                staff_id          = staff_id,
                                staff_name        = fullname,
                                plan_id           = plan_id,
                                goal              = goal,
                                medicaid          = medicaid,
                                acronym           = acronym, 
                                notedate          = form.get("notedate"),
                                notebody          = form.get("notebody", "").strip(),
                                duration          = form.get("duration"),
                                mood_affect       = form.get("mood_affect"),
                                thought_process   = form.get("thought_process"),
                                motor_activity    = form.get("motor_activity"),
                                behavior          = form.get("behavior"),
                                medical_condition = form.get("medical_condition"),
                                substance_use     = form.get("substance_use"),
                                esof_name         = esof_name,
                                esof_date         = esof_date)

            db.session.add(note)
            db.session.commit()
            alert_scan(note.notebody)

            return redirect(
                url_for(
                    'chart.progress_view',
                    client_id=client_id,
                    start_date=form.get("notedate"),
                    end_date=form.get("notedate")
                )
            )

    return render_template('get_client_id.html', clients=clients)

@chart.route('/progress_update', methods=["GET", "POST"])
@login_required
def progress_update():

    user = get_user()
    fullname = user.fullname
    # staff_id = user.user_id

    update_check = secure_update()
    if update_check:
        return update_check

    form    = request.form
    action  = form.get("action")
    clients = db.session.query(MPI).all()
    today, past_date = get_date(90)

    # ---------------------------------
    # INITIAL PAGE LOAD
    # ---------------------------------

    if request.method != "POST":

        return render_template(
            'get_client.html',
            clients=clients,
            start_date=past_date,
            end_date=today
        )

    client_id  = form.get("client_id")
    rec_id     = form.get("rec_id")
    start_date = form.get("start_date")
    end_date   = form.get("end_date")

    # ---------------------------------
    # ACTION: SELECT CLIENT RECORDS
    # ---------------------------------

    if action == "select":

        client = (
            db.session.query(MPI.fname, MPI.lname)
            .filter(MPI.client_id == client_id)
            .first()
        )

        notes = (
            db.session.query(ProgressNote)
            .filter(
                ProgressNote.client_id == client_id,
                ProgressNote.notedate >= start_date,
                ProgressNote.notedate <= end_date
            )
            .order_by(desc(ProgressNote.notedate))
            .all()
        )

        return render_template(
            'progress_select.html',
            client    = client,
            notes     = notes,
            client_id = client_id,
            mode      = "update"
        )

    # ---------------------------------
    # ACTION: LOAD NOTE FOR EDIT
    # ---------------------------------

    if action == "modify":

        note = (
            db.session.query(ProgressNote)
            .filter(ProgressNote.rec_id == rec_id)
            .first()
        )

        if not note:
            return redirect(url_for('chart.progress_update'))

        client = ( 
            db.session.query(MPI.fname, MPI.lname)
            .filter(MPI.client_id == note.client_id)
            .first()
        )

        goal_fields = ["goal_one_header", "goal_two_header", "goal_three_header", "goal_four_header"]
        goals = []

        latest_plan_subquery = db.session.query(func.max(SupportPlan.rec_id)).filter(SupportPlan.client_id == client_id).scalar_subquery()
        support_plans = SupportPlan.query.filter(SupportPlan.rec_id == latest_plan_subquery).all()

        for plan in support_plans:
            for field in goal_fields:
                goal_header = getattr(plan, field, None)
                if goal_header:
                    goals.append({"rec_id": plan.rec_id, "goal_header": goal_header})

        if not any(g["rec_id"] == 0 for g in goals):
            goals.insert(0, {"rec_id": 0, "goal_header": "[0] CN Case Note"})

        goals.insert(0, {"rec_id": note.plan_id, "goal_header": note.goal})
        unitname  = db.session.query(Unit.unit_lname).filter(Unit.unit_id == note.unit_id).first()
        place     = f"{note.unit_id} -- {note.unit_lname}"

        return render_template(
            'progress_update.html',
            rec_id    = rec_id,
            client_id = client_id,
            client    = client,
            goals     = goals,
            note      = note,
            unitname  = unitname,
            place     = place,
            fullname  = fullname,
            units     = Unit.query.all())

    # ---------------------------------
    # ACTION: UPDATE NOTE
    # ---------------------------------

    if action == "update":

        note = (
            db.session.query(ProgressNote)
            .filter(ProgressNote.rec_id == rec_id)
            .first()
        )

        if not note:
            return redirect(url_for('chart.progress_update'))
    
        unit_result = get_unit(request.form.get("unit_lname", ""))
        if not isinstance(unit_result, tuple):
            return unit_result
        unit_id, unit_lname = unit_result
            
        record     = form.get("goal_header")
        goal_split = re.split(r'--', record)
        plan_id    = goal_split[0].strip()
        goal       = goal_split[1].strip()

        match = re.match(r'\[(\d+)\]\s+([A-Z]+)', goal)
        if match:
            medicaid = int(match.group(1))
            acronym = match.group(2)
        else:
            medicaid = 0
            acronym = 'CN'

        start_date = form.get("start_date")

        esof_name = form.get("esof_name") or note.esof_name
        if esof_name and not note.esof_date:
            esof_date = today
        else:
            esof_date = note.esof_date

        note.chart             = form.get("chart")
        note.unit_id           = unit_id
        note.unit_lname        = unit_lname
        note.plan_id           = plan_id
        note.goal              = goal
        note.medicaid          = medicaid
        note.acronym           = acronym
        note.notedate          = form.get("notedate")
        note.notebody          = form.get("notebody")
        note.duration          = form.get("duration")
        note.mood_affect       = form.get("mood_affect")
        note.thought_process   = form.get("thought_process")
        note.motor_activity    = form.get("motor_activity")
        note.behavior          = form.get("behavior")
        note.medical_condition = form.get("medical_condition")
        note.substance_use     = form.get("substance_use")
        note.esof_name         = esof_name
        note.esof_date         = esof_date

        db.session.commit()

        return redirect(
            url_for(
                'chart.progress_get',
                client_id = note.client_id,
                rec_id    = note.rec_id
            )
        )

    # -----------------------------
    # ACTION: DELETE RECORD
    # -----------------------------
    if action == "delete":

        rec_id = form.get("rec_id")
        note = (
            db.session.query(ProgressNote)
            .filter(ProgressNote.rec_id == rec_id)
            .first()
        )

        if not note:
            return redirect(
                url_for(
                    'chart.error_page',
                    error='Note Not Found.'
                )
            )

        remove_check = secure_remove()
        if remove_check:
            return remove_check

        db.session.delete(note)
        db.session.commit()

        return render_template('chart.html')

    # ---------------------------------
    # FALLBACK SAFETY
    # ---------------------------------

    return redirect(url_for('chart.progress_update'))

@chart.route('/progress_view', methods=["GET", "POST"])
@login_required
def progress_view():

    mode = request.args.get('mode', 'view')
    clients = db.session.query(MPI).all()
    today, past_date = get_date(90)

    client_id  = request.values.get("client_id")
    start_date = request.values.get("start_date")
    end_date   = request.values.get("end_date")

    if client_id:

           resident = db.session.query(MPI.fname, MPI.lname).filter(MPI.client_id == client_id).first()
           query = db.session.query(ProgressNote).filter(and_(ProgressNote.client_id == client_id,
                                                              ProgressNote.notedate >= start_date, 
                                                              ProgressNote.notedate <= end_date))
           results = query.all()
    # re module used to emulate Perl's split() function: "--" is a delimiter
           for note in results:
                   note.note_type = "Core Service: " if note.plan_id > 0 else "Note Type: "
                   note.pattern = note.goal
                   note.goal = re.sub(r'\[\d+\]\s*', '', note.goal)


                   goal_fields = [
                       ('goal_one_level', 'goal_one_status', 'goal_one_object', 'goal_one_header'),
                       ('goal_two_level', 'goal_two_status', 'goal_two_object', 'goal_two_header'),
                       ('goal_three_level', 'goal_three_status', 'goal_three_object', 'goal_three_header'),
                       ('goal_four_level', 'goal_four_status', 'goal_four_object', 'goal_four_header'),
                   ]

                   for level_col, status_col, object_col, header_col in goal_fields:
    # Named parameters (similar to variable binding) and mappings emulate a hashref
                       sql = f"""
                           SELECT {level_col} AS level, {status_col} AS status, {object_col} AS object
                           FROM support_plan
                           WHERE client_id = :client_id
                             AND rec_id = :rec_id
                             AND {header_col} = :pattern
                       """
                       result = db.session.execute(
                           text(sql),
                           {
                               'client_id': note.client_id,
                               'rec_id':    note.plan_id,
                               'pattern':   note.pattern
                           }
                       ).mappings().first()

                       if result:
                           note.level = result['level']
                           note.objective = result['object']
                           break  # Stop once a match is found for any goal
                       else:
                           note.level = ''
                           note.objective = ''

    return render_template('progress_view.html', notes=results, client_id=client_id, resident=resident, mode=mode)

    return render_template('get_client.html', clients=clients, end_date=today, start_date=past_date)

@chart.route('/support_get', methods=["GET", "POST"])
@login_required
def support_get():

    client_id = request.args.get("client_id")
    rec_id = request.args.get("rec_id")

    if client_id and rec_id:

        resident = db.session.query(MPI.fname, MPI.lname).filter(MPI.client_id == client_id).first()

        result = (
            db.session.query(SupportPlan)
            .filter(
                SupportPlan.client_id == client_id,
                SupportPlan.rec_id == rec_id
            )
            .all()
        )

        if not result:
            return redirect(url_for('chart.support_view', client_id=client_id))
            
        return render_template('support_view.html', plans=result, client_id=client_id, resident=resident)

@chart.route('/support_plan', methods=["GET", "POST"])
@login_required
def support_plan():

    user = get_user()
    fullname = user.fullname
    staff_id = user.user_id

    clients = db.session.execute(
        select(MPI.client_id, MPI.fname, MPI.lname)
    )

    today, next_date = future_date(90)

    sth = select(FunctionalSkills.skill_area).select_from(FunctionalSkills).order_by(FunctionalSkills.rec_id)
    skill = list(db.session.execute(sth))  # Convert to a list

    if request.method == "POST":

        form = request.form
        action = form.get("action")

        client_id = form.get("client_id")
        client = get_client(client_id)
        start_date = form.get("start_date")
        end_date   = form.get("end_date")

        # -------------------------
        # SELECT CLIENT / LOAD VIEW
        # -------------------------
        if action == "select" and client_id:

            place_str = get_placement(client_id)
            client = db.session.query(MPI.client_id, MPI.fname, MPI.lname).filter(MPI.client_id == client_id).first()

            max_start_date_subquery = db.session.query(func.max(Functional.start_date)).filter(Functional.client_id == client_id).scalar_subquery()
            funct = (
                db.session.query(Functional)
                .filter(
                    and_(
                        Functional.client_id == client_id,
                        Functional.start_date == max_start_date_subquery
                    )
                )
                .all()
            )

            return render_template(
                'support_plan.html',
                client=client,
                funct=funct,
                skill=skill,
                startdate=today,
                end_date=next_date,
                units=Unit.query.all(),
                place_str=place_str,
                fullname=fullname
            )

        # -------------------------
        # INSERT SUPPORT PLAN
        # -------------------------
        if action == "insert":

            result = get_unit(form.get("unit_lname", ""))
            if not isinstance(result, tuple):
                return result
            unit_id, unit_lname = result

            goal_one_medicaid   = None
            goal_one_acronym    = None
            goal_one_code       = None
            goal_two_medicaid   = None
            goal_two_acronym    = None
            goal_two_code       = None
            goal_three_medicaid = None
            goal_three_acronym  = None
            goal_three_code     = None
            goal_four_medicaid  = None
            goal_four_acronym   = None
            goal_four_code      = None

            medicaid = form.get("goal_one_header")
            acronym = medicaid
            if medicaid:
                match = re.match(r'\[(\d+)\]', medicaid)
                if match:
                    goal_one_medicaid = int(match.group(1))
                else:
                    goal_one_medicaid = None

            if isinstance(acronym, str):
                match = re.search(r'\[.*\]\s+([A-Za-z]+)', acronym)
                if match:
                    goal_one_acronym = match.group(1)
                else:
                    goal_one_acronym = None
            else:
                goal_one_acronym = None

            status = form.get("goal_one_status")
            if status:
                result = re.split(r' - ', status)
            goal_one_code = result[0] if len(result) > 0 else None

            medicaid = request.form.get("goal_two_header")
            acronym = medicaid
            if medicaid:
                match = re.match(r'\[(\d+)\]', medicaid)
                if match:
                    goal_two_medicaid = int(match.group(1))  # Convert the number to integer
                else:
                    goal_two_medicaid = None
            if isinstance(acronym, str):
                match = re.search(r'\[.*\]\s+([A-Za-z]+)', acronym)
                if match:
                    goal_two_acronym = match.group(1)
                else:
                    goal_two_acronym = None
            else:
                goal_two_acronym = None
            status = request.form.get("goal_two_status")
            if status:
                result = re.split(r' - ', status)
            goal_two_code = result[0] if len(result) > 0 else None
            
            medicaid = request.form.get("goal_three_header")
            acronym = medicaid
            if medicaid:
                match = re.match(r'\[(\d+)\]', medicaid)
                if match:
                    goal_three_medicaid = int(match.group(1))  # Convert the number to integer
                else:
                    goal_three_medicaid = None
            if isinstance(acronym, str):
                match = re.search(r'\[.*\]\s+([A-Za-z]+)', acronym)
                if match:
                    goal_three_acronym = match.group(1)
                else:
                    goal_three_acronym = None
            else:
                goal_three_acronym = None
            status = request.form.get("goal_three_status")
            if status:
                result = re.split(r' - ', status)
            goal_three_code = result[0] if len(result) > 0 else None

            medicaid = request.form.get("goal_four_header")
            acronym = medicaid
            if medicaid:
                match = re.match(r'\[(\d+)\]', medicaid)
                if match:
                    goal_four_medicaid = int(match.group(1))  # Convert the number to integer
                else:
                    goal_four_medicaid = None
            if isinstance(acronym, str):
                match = re.search(r'\[.*\]\s+([A-Za-z]+)', acronym)
                if match:
                    goal_four_acronym = match.group(1)
                else:
                    goal_four_acronym = None
            else:
                goal_four_acronym = None
            status = request.form.get("goal_four_status")
            if status:
                result = re.split(r' - ', status)
            goal_four_code = result[0] if len(result) > 0 else None
            
            plan = SupportPlan(
                client_id=request.form.get("client_id"),
                client_name=request.form.get("client_name"),
                chart_id=request.form.get("chart_id"),
                unit_id=unit_id,
                unit_lname=unit_lname,
                staff_id=staff_id,
                staff_name=fullname,
                start_date=start_date,
                end_date=end_date,
                caseworker=request.form.get("caseworker"),
                backup=request.form.get("backup"),
                supervisor=request.form.get("supervisor"),
                diagnosis=request.form.get("diagnosis"),
                needs_selfcare=request.form.get("needs_selfcare"),
                needs_skills=request.form.get("needs_skills"),
                needs_support=request.form.get("needs_support"),
                needs_adl=request.form.get("needs_adl"),
                needs_focus=request.form.get("needs_focus"),
                rights_grievances=request.form.get("rights_grievances"),
                rights_date=request.form.get("rights_date"),
                goal_one_header=request.form.get("goal_one_header"),
                goal_one_medicaid   = goal_one_medicaid,
                goal_one_acronym    = goal_one_acronym,
                goal_one_level      = request.form.get("goal_one_level"),
                goal_one_code       = goal_one_code,
                goal_one_status     = request.form.get("goal_one_status"),
                goal_one_object=request.form.get("goal_one_object"),
                goal_one_service=request.form.get("goal_one_service"),
                goal_one_eval=request.form.get("goal_one_eval"),
                goal_two_header=request.form.get("goal_two_header"),
                goal_two_medicaid   = goal_two_medicaid,
                goal_two_acronym    = goal_two_acronym,
                goal_two_level      = request.form.get("goal_two_level"),
                goal_two_code       = goal_two_code,
                goal_two_status     = request.form.get("goal_two_status"),
                goal_two_object=request.form.get("goal_two_object"),
                goal_two_service=request.form.get("goal_two_service"),
                goal_two_eval=request.form.get("goal_two_eval"),
                goal_three_header=request.form.get("goal_three_header"),
                goal_three_medicaid = goal_three_medicaid,
                goal_three_acronym  = goal_three_acronym,
                goal_three_level    = request.form.get("goal_three_level"),
                goal_three_code     = goal_three_code,
                goal_three_status   = request.form.get("goal_three_status"),
                goal_three_object=request.form.get("goal_three_object"),
                goal_three_service=request.form.get("goal_three_service"),
                goal_three_eval=request.form.get("goal_three_eval"),
                goal_four_header=request.form.get("goal_four_header"),
                goal_four_medicaid  = goal_four_medicaid,
                goal_four_acronym   = goal_four_acronym,
                goal_four_level     = request.form.get("goal_four_level"),
                goal_four_code      = goal_four_code,
                goal_four_status    = request.form.get("goal_four_status"),
                goal_four_object=request.form.get("goal_four_object"),
                goal_four_service=request.form.get("goal_four_service"),
                goal_four_eval=request.form.get("goal_four_eval"),
                time_insert=datetime.now(),
            )
            
            db.session.add(plan)
            db.session.commit()

            rec_id = plan.rec_id
            if rec_id:
                plan.goal_one_id   = f"{rec_id}-1"
                plan.goal_two_id   = f"{rec_id}-2"
                plan.goal_three_id = f"{rec_id}-3"
                plan.goal_four_id  = f"{rec_id}-4"
                db.session.commit()
            
            return redirect(
                url_for(
                    'chart.support_view',
                    client_id=client_id,
                    start_date=form.get("start_date"),
                    end_date=form.get("end_date")
                )
            )

    return render_template('get_client_id.html', clients=clients)

@chart.route('/support_update', methods=["GET", "POST"])
@login_required
def support_update():

    user = get_user()
    fullname = user.fullname
    staff_id = user.user_id
    staff_name   = fullname

    update_check = secure_update()
    if update_check:
        return update_check

    clients = db.session.execute(
        select(MPI.client_id, MPI.fname, MPI.lname)
    )

    today, start_date = get_date(180)

    sorted_skills = (
        db.session.query(FunctionalSkills)
        .order_by(FunctionalSkills.rec_id)
        .all()
    )

    # ---------------------------------
    # INITIAL PAGE LOAD
    # ---------------------------------

    if request.method == "POST":

        form    = request.form
        action  = form.get("action")

        client_id  = form.get("client_id")
        rec_id     = form.get("rec_id")
        start_date = form.get("start_date")

    # -------------------------
    # SELECT CLIENT / LOAD VIEW
    # -------------------------

        if action == "select" and client_id:

            client = db.session.query(MPI.fname, MPI.lname).filter(MPI.client_id == client_id).first()
            query = db.session.query(SupportPlan).filter(and_(SupportPlan.client_id == client_id,
                                                              SupportPlan.start_date >= start_date)) 
            results = query.all()

            return render_template('support_select.html', client_id=client_id, client=client, plans=results)

    # ---------------------------------
    # ACTION: SELECT PLAN
    # ---------------------------------

        if action == "modify":

            plan = db.session.query(SupportPlan).filter(SupportPlan.rec_id == rec_id).first()
            if not plan:
                return redirect(url_for('chart.support_update'))

            client = db.session.query(MPI.fname, MPI.lname).filter(MPI.client_id == plan.client_id).first()

            max_start_date_subquery = db.session.query(func.max(Functional.start_date)).filter(Functional.client_id == client_id).scalar_subquery()

            # funct = db.session.query(Functional).filter(and_(Functional.client_id == client_id, Functional.start_date == max_start_date_subquery))
            # results = funct.all()

            results = (
                db.session.query(Functional)
                .filter(
                    Functional.client_id == client_id,
                    Functional.start_date == max_start_date_subquery
                )
                .all()
            )

            client_id = plan.client_id
            return render_template('support_update.html', rec_id=rec_id, client_id=client_id, client=client, plan=plan, sorted_skills=sorted_skills, funct=results,  fullname=fullname, units = Unit.query.all())

    # ---------------------------------
    # ACTION: UPDATE PLAN
    # ---------------------------------

        if action == "update":
    
            rec_id = form.get("rec_id")
            client_id = form.get("client_id")
            support_update = db.session.query(SupportPlan).filter(SupportPlan.rec_id == rec_id).first()

            if support_update:

                result = get_unit(request.form.get("unit_lname", ""))
                if not isinstance(result, tuple):
                    return result
                unit_id, unit_lname = result
                
                # staff_name  = fullname
                # staff_id    = user.user_id
                start_date  = form.get("start_date")

                goal_one_medicaid   = None
                goal_one_acronym    = None
                goal_one_code       = None
                goal_two_medicaid   = None
                goal_two_acronym    = None
                goal_two_code       = None
                goal_three_medicaid = None
                goal_three_acronym  = None
                goal_three_code     = None
                goal_four_medicaid  = None
                goal_four_acronym   = None
                goal_four_code      = None

                medicaid = request.form.get("goal_one_header")
                acronym = medicaid
                if medicaid:
                    match = re.match(r'\[(\d+)\]', medicaid)
                    if match:
                        goal_one_medicaid = int(match.group(1))  # Convert the number to integer
                    else:
                        goal_one_medicaid = None
                if isinstance(acronym, str):
                    match = re.search(r'\[.*\]\s+([A-Za-z]+)', acronym)
                    if match:
                        goal_one_acronym = match.group(1)
                    else:
                        goal_one_acronym = None
                else:
                    goal_one_acronym = None

                status = request.form.get("goal_one_status")
                if status:
                    result = re.split(r' - ', status)
                    goal_one_code = result[0] if result and len(result) > 0 else None
                else:
                    goal_one_code = None
                goal_one_code = None if goal_one_code == "None" else goal_one_code
            
                medicaid = request.form.get("goal_two_header")
                acronym = medicaid
                if medicaid:
                    match = re.match(r'\[(\d+)\]', medicaid)
                    if match:
                        goal_two_medicaid = int(match.group(1))  # Convert the number to integer
                    else:
                        goal_two_medicaid = None
                if isinstance(acronym, str):
                    match = re.search(r'\[.*\]\s+([A-Za-z]+)', acronym)
                    if match:
                        goal_two_acronym = match.group(1)
                    else:
                        goal_two_acronym = None
                else:
                    goal_two_acronym = None

                status = request.form.get("goal_two_status")
                if status:
                    result = re.split(r' - ', status)
                    goal_two_code = result[0] if result and len(result) > 0 else None
                else:
                    goal_two_code = None
                goal_two_code = None if goal_two_code == "None" else goal_two_code
            
            
                medicaid = request.form.get("goal_three_header")
                acronym = medicaid
                if medicaid:
                    match = re.match(r'\[(\d+)\]', medicaid)
                    if match:
                        goal_three_medicaid = int(match.group(1))  # Convert the number to integer
                    else:
                        goal_three_medicaid = None
                if isinstance(acronym, str):
                    match = re.search(r'\[.*\]\s+([A-Za-z]+)', acronym)
                    if match:
                        goal_three_acronym = match.group(1)
                    else:
                        goal_three_acronym = None
                else:
                    goal_three_acronym = None

                status = request.form.get("goal_three_status")
                if status:
                    result = re.split(r' - ', status)
                    goal_three_code = result[0] if result and len(result) > 0 else None
                else:
                    goal_three_code = None
                goal_three_code = None if goal_three_code == "None" else goal_three_code
            
                medicaid = request.form.get("goal_four_header")
                acronym = medicaid
                if medicaid:
                    match = re.match(r'\[(\d+)\]', medicaid)
                    if match:
                        goal_four_medicaid = int(match.group(1))  # Convert the number to integer
                    else:
                        goal_four_medicaid = None
                if isinstance(acronym, str):
                    match = re.search(r'\[.*\]\s+([A-Za-z]+)', acronym)
                    if match:
                        goal_four_acronym = match.group(1)
                    else:
                        goal_four_acronym = None
                else:
                    goal_four_acronym = None

                status = request.form.get("goal_four_status")
                if status:
                    result = re.split(r' - ', status)
                    goal_four_code = result[0] if result and len(result) > 0 else None
                else:
                    goal_four_code = None
                goal_four_code = None if goal_four_code == "None" else goal_four_code
            
                support_update.staff_name          = staff_name
                support_update.staff_id            = staff_id
                support_update.unit_lname          = unit_lname
                support_update.unit_id             = unit_id
                support_update.start_date          = request.form.get("start_date")

                support_update.end_date            = request.form.get("end_date")
                if support_update.end_date in ['', 'None', 'null']:
                    support_update.end_date = None

                support_update.chart_id            = request.form.get("chart_id")
                support_update.client_name         = request.form.get("client_name")
                support_update.caseworker          = request.form.get("caseworker")
                support_update.backup              = request.form.get("backup")
                support_update.supervisor          = request.form.get("supervisor")
                support_update.diagnosis           = request.form.get("diagnosis")
                support_update.needs_selfcare      = request.form.get("needs_selfcare")
                support_update.needs_skills        = request.form.get("needs_skills")
                support_update.needs_support       = request.form.get("needs_support")
                support_update.needs_adl           = request.form.get("needs_adl")
                support_update.needs_focus         = request.form.get("needs_focus")
                support_update.rights_grievances   = request.form.get("rights_grievances")
                support_update.rights_date         = request.form.get("rights_date")
                support_update.goal_one_header     = request.form.get("goal_one_header")
                support_update.goal_one_medicaid   = goal_one_medicaid
                support_update.goal_one_acronym    = goal_one_acronym
                support_update.goal_one_level      = request.form.get("goal_one_level")
                support_update.goal_one_code       = goal_one_code
                support_update.goal_one_status     = request.form.get("goal_one_status")
                support_update.goal_one_object     = request.form.get("goal_one_object")
                support_update.goal_one_service    = request.form.get("goal_one_service")
                support_update.goal_one_eval       = request.form.get("goal_one_eval")
                support_update.goal_two_header     = request.form.get("goal_two_header")
                support_update.goal_two_medicaid   = goal_two_medicaid
                support_update.goal_two_acronym    = goal_two_acronym
                support_update.goal_two_level      = request.form.get("goal_two_level")
                support_update.goal_two_code       = goal_two_code
                support_update.goal_two_status     = request.form.get("goal_two_status")
                support_update.goal_two_object     = request.form.get("goal_two_object")
                support_update.goal_two_service    = request.form.get("goal_two_service")
                support_update.goal_two_eval       = request.form.get("goal_two_eval")
                support_update.goal_three_header   = request.form.get("goal_three_header")
                support_update.goal_three_medicaid = goal_three_medicaid
                support_update.goal_three_acronym  = goal_three_acronym
                support_update.goal_three_level    = request.form.get("goal_three_level")
                support_update.goal_three_code     = goal_three_code
                support_update.goal_three_status   = request.form.get("goal_three_status")
                support_update.goal_three_object   = request.form.get("goal_three_object")
                support_update.goal_three_service  = request.form.get("goal_three_service")
                support_update.goal_three_eval     = request.form.get("goal_three_eval")
                support_update.goal_four_header    = request.form.get("goal_four_header")
                support_update.goal_four_medicaid  = goal_four_medicaid
                support_update.goal_four_acronym   = goal_four_acronym
                support_update.goal_four_level     = request.form.get("goal_four_level")
                support_update.goal_four_code      = goal_four_code
                support_update.goal_four_status    = request.form.get("goal_four_status")
                support_update.goal_four_object    = request.form.get("goal_four_object")
                support_update.goal_four_service   = request.form.get("goal_four_service")
                support_update.goal_four_eval      = request.form.get("goal_four_eval")

                db.session.commit()

                return redirect(
                    url_for(
                        'chart.support_view',
                        client_id = client_id,
                        rec_id    = rec_id
                    )
                )

    return render_template('get_client.html', clients=clients, end_date=today, start_date=start_date)

@chart.route('/support_view', methods=["GET", "POST"])
@login_required
def support_view():

    # mode = request.args.get('mode', 'view')
    clients  = db.session.query(MPI).all()
    today, start_date = get_date(90)


    client_id  = request.values.get("client_id")
    rec_id     = request.values.get("rec_id")
    start_date = request.values.get("start_date")
    end_date   = request.values.get("end_date")

    if client_id and not rec_id:
            
        client = db.session.query(MPI.fname, MPI.lname).filter(MPI.client_id == client_id).first()
        query = db.session.query(SupportPlan).filter(and_(SupportPlan.client_id == client_id,
                                                          SupportPlan.start_date >= start_date, 
                                                          SupportPlan.start_date < end_date))
        results = query.all()

        return render_template('support_select.html', client_id=client_id, client=client, plans=results)

    if client_id and rec_id:

        resident = db.session.query(MPI.fname, MPI.lname).filter(MPI.client_id == client_id).first()
        query = db.session.query(SupportPlan).filter(and_(SupportPlan.client_id == client_id,
                                                              SupportPlan.rec_id == rec_id))
        results = query.all()

        max_start_date_subquery = db.session.query(func.max(Functional.start_date)).filter(Functional.client_id == client_id).scalar_subquery()

        funct = (
            db.session.query(Functional)
            .filter(
                and_(
                    Functional.client_id == client_id,
                    Functional.start_date == max_start_date_subquery
                )
            )
            .all()
        )

        return render_template('support_view.html', plans=results, client_id=client_id, resident=resident, funct=funct)

    return render_template('get_client.html', clients=clients, end_date=today, start_date=start_date)

