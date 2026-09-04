# advance_helpers.py

from flask import session, render_template
from advance_models import Users
from sqlalchemy import func, select
from datetime import datetime, timedelta
from Advance.extensions import db
from Advance.chart.chart_models import Placement
import re

def future_date(count):
    today = db.session.query(func.current_date()).scalar()
    future = datetime.now() + timedelta(days=int(count))
    future_date = future.strftime('%Y-%m-%d')
    return today, future_date

def get_date(count):
    today = db.session.query(func.current_date()).scalar()
    past = datetime.now() - timedelta(days=int(count))
    past_date = past.strftime('%Y-%m-%d')
    return today, past_date

def get_placement(client_id):
    """ Returns the housing unit for a given client_id, or None if not found.  """
    subquery = select(func.max(Placement.start_date)).where(
        Placement.client_id == client_id,
        Placement.end_date.is_(None)
    ).scalar_subquery()
    query = select(Placement).where(
        Placement.client_id == client_id,
        Placement.end_date.is_(None),
        Placement.start_date == subquery
    )
    placement = db.session.execute(query).scalar_one_or_none()
    if placement:
        return f"{placement.unit_id} -- {placement.unit_lname}"
    return None

def get_unit(record):
    """
    Splits a unit_lname string on '--', strips whitespace, and returns an error page if invalid.
    Args: record (str): The input string from the dropdown menu.
    Returns: tuple: (unit_id, unit_lname) if valid, or a rendered error page (HTML) if not.
    """
    if not record:
        return render_template("error.html", error_str="No unit selected.")

    parts = re.split(r'--', record)
    if len(parts) != 2:
        return render_template("error.html", error_str=f"Invalid unit format: '{record}'. Expected 'ID -- Name'.")

    unit_id = parts[0].strip()
    unit_lname = parts[1].strip()
    return unit_id, unit_lname

def get_user():
    return Users.query.filter_by(username=session["username"]).first()

def secure_remove():
    """Return None if allowed, or rendered error template if not."""
    username=session["username"]
    sth = select(Users.update).where(Users.username == username, Users.remove == 'Yes')
    allowed = db.session.execute(sth).scalar()
    if not allowed:
        error = "Removing a clinical record requires a Remove Privilege."
        return render_template('error.html', error=error)

def secure_update():
    """Return None if allowed, or rendered error template if not."""
    username=session["username"]
    sth = select(Users.update).where(Users.username == username, Users.update == 'Yes')
    allowed = db.session.execute(sth).scalar()
    if not allowed:
        error = "Modifying a clinical record requires an Update Privilege."
        return render_template('error.html', error=error)

def secure_admin():
    """Return None if allowed, or rendered error template if not."""
    username=session["username"]
    sth = select(Users.trust).where((Users.username == username) & (Users.track == 'admin'))
    allowed = db.session.execute(sth).scalar()
    if not allowed:
        error = "This function is reserved for administrative staff."
        return render_template('error.html', error=error)

def secure_trust():
    """Return None if allowed, or rendered error template if not."""
    username=session["username"]
    sth = select(Users.trust).where((Users.username == username) & (Users.trust == 't'))
    allowed = db.session.execute(sth).scalar()
    if not allowed:
        error = "This function is reserved for IT staff."
        return render_template('error.html', error=error)

