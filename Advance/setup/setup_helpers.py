from .setup_models import db
from advance_models import Users 

def get_user_id(user_name):
    return db.session.query(Users.user_id)\
        .filter(Users.username == user_name)\
        .scalar()

def get_user_name(user_name):
    return db.session.query(Users.fullname)\
        .filter(Users.username == user_name)\
        .scalar()
