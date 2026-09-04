from flask import Flask
from flask_login import LoginManager

# ============================================================
# APP CREATION (MUST BE FIRST)
# ============================================================

app = Flask(__name__)

app.config['SECRET_KEY'] = 'Your_Secret_Key'
from config.database import DATABASE_URI
app.config['SQLALCHEMY_DATABASE_URI'] = DATABASE_URI

# ============================================================
# EXTENSIONS (CORRECT PATTERN)
# ============================================================

from Advance.extensions import db
db.init_app(app)

# ============================================================
# HTPASSWD (Discontinued in favour of Apache htaccess)
# ============================================================

# ============================================================
# LOGIN MANAGER
# ============================================================

login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = 'auth.login'

from advance_models import Users

@login_manager.user_loader
def load_user(user_id):
    return Users.query.get(int(user_id))

# ============================================================
# BLUEPRINTS (MUST BE AFTER APP + EXTENSIONS)
# ============================================================

from auth import auth as auth_blueprint
app.register_blueprint(auth_blueprint)

from Advance.admin.routes import admin
from Advance.chart.routes import chart
from Advance.reports.routes import reports
from Advance.setup.routes import setup

app.register_blueprint(admin, url_prefix='/admin')
app.register_blueprint(chart, url_prefix='/chart')
app.register_blueprint(reports, url_prefix='/reports')
app.register_blueprint(setup, url_prefix='/setup')

# ============================================================
# SESSION TIMEOUT
# ============================================================
# Original route moved to services.py

from Advance.services import check_session_timeout

@app.before_request
def timeout_middleware():
    check_session_timeout()

# ============================================================
# DEV ENTRY POINT ONLY
# ============================================================
if __name__ == '__main__':

    app.run(debug=True)
