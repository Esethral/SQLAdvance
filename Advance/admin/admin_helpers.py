from .admin_models import db
from advance_models import Users 
from Advance.setup.setup_models import Unit

def get_user_id(user_name):
    return db.session.query(Users.user_id)\
        .filter(Users.username == user_name)\
        .scalar()

def get_user_name(user_name):
    return db.session.query(Users.fullname)\
        .filter(Users.username == user_name)\
        .scalar()

def get_unit_id(unit_lname):
    return db.session.query(Unit.unit_id)\
        .filter(Unit.unit_lname == unit_lname)\
        .scalar()
