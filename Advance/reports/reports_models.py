from Advance.extensions import db
from flask_login import UserMixin

class ProgressNoteView(db.Model):
    __tablename__ = 'progress_note_view'
    rec_id             = db.Column(db.Integer, primary_key=True)
    client             = db.Column(db.String)
    notedate           = db.Column(db.DateTime)
    plan_id            = db.Column(db.Integer)
    unit_lname         = db.Column(db.String)
    staff_name          = db.Column(db.String)
    goal               = db.Column(db.String)
    medicaid           = db.Column(db.Integer)
    acronym            = db.Column(db.String)
    medicaid_id        = db.Column(db.String)
    account_id         = db.Column(db.String)
    icd_10             = db.Column(db.String)
    physician_name     = db.Column(db.String)
    physician_licence  = db.Column(db.String)
    physician_npi      = db.Column(db.String)
    admission          = db.Column(db.DateTime)
    discharge          = db.Column(db.DateTime)
    inpt_in            = db.Column(db.DateTime)
    inpt_out           = db.Column(db.DateTime)
