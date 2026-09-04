from Advance.extensions import db
from flask_login import UserMixin

class EmailInternal(UserMixin, db.Model):
    rec_id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer)
    user_name = db.Column(db.String(255))
    fullname = db.Column(db.String(255))
    alert = db.Column(db.String(8))
    incident = db.Column(db.String(8))
    property = db.Column(db.String(8))
    support = db.Column(db.String(8))

class EmailNotification(UserMixin, db.Model):
    rec_id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer)
    user_name = db.Column(db.String(255))
    user_email = db.Column(db.String(255))
    alert = db.Column(db.String(8))
    incident = db.Column(db.String(8))
    property = db.Column(db.String(8))
    support = db.Column(db.String(8))

class Keyword(UserMixin, db.Model):
    rec_id = db.Column(db.Integer, primary_key=True)
    keyword = db.Column(db.String(80))

class Track(UserMixin, db.Model):
    track_id = db.Column(db.Integer, primary_key=True)
    track_name = db.Column(db.String(80)) 

class Unit(UserMixin, db.Model):
    unit_id = db.Column(db.Integer, primary_key=True)
    unit_lname = db.Column(db.String(255)) 
    track_id = db.Column(db.Integer)
    supervisor = db.Column(db.String(255)) 
    address = db.Column(db.String(255)) 
    city = db.Column(db.String(80)) 
    state = db.Column(db.String(80)) 
    postcode = db.Column(db.String(80)) 
    phone = db.Column(db.String(80))

