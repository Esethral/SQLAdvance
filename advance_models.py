from Advance.extensions import db
from flask_login import UserMixin
from datetime import datetime

# -------------------------
# AUTH USER MODEL
# -------------------------
class Users(UserMixin, db.Model):
    __tablename__ = "users"

    user_id  = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(250), unique=True, nullable=False)
    password = db.Column(db.String(250), nullable=False)
    fullname = db.Column(db.String(250), unique=True, nullable=False)
    email    = db.Column(db.String(250), unique=True, nullable=False)
    track    = db.Column(db.String(25), nullable=False)
    trust    = db.Column(db.String(1), nullable=False)
    update   = db.Column(db.String(3), nullable=False)
    remove   = db.Column(db.String(3), nullable=False)

    # ✅ Flask-Login FIX (critical)
    def get_id(self):
        return str(self.user_id)

    def __repr__(self):
        return f"<Users {self.username!r}>"

# -------------------------
# LOGIN AUDIT TABLE
# -------------------------
class Login(db.Model):
    __tablename__ = "login"

    rec_id   = db.Column(db.Integer, primary_key=True)
    user_id  = db.Column(db.Integer)
    username = db.Column(db.String(250), nullable=False)
    logtime  = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)
    ip       = db.Column(db.String(250), nullable=False)

    def __repr__(self):
        return f"<Login user_id={self.user_id} username={self.username}>"
