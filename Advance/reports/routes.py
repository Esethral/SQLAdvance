from flask import Blueprint, render_template, request
from flask_login import login_required
from sqlalchemy import and_, func, or_, select, text
from datetime import date, datetime

from Advance.extensions import db
from advance_helpers import get_date
from Advance.chart.chart_models import MPI, Inpatient
from Advance.setup.setup_models import Unit
from .reports_models import ProgressNoteView

reports=Blueprint('reports', __name__,template_folder='templates',static_folder='static')

@reports.route('/')
@login_required
def index():
    return render_template('reports.html')

@reports.route('/medicaid_charge_report', methods=["GET", "POST"])
@login_required
def medicaid_charge_report():

    today, past_date = get_date(30)

    if request.method == "POST":

        start_date_str = request.form.get("start_date")
        end_date_str = request.form.get("end_date")

        start_date = datetime.strptime(start_date_str, "%Y-%m-%d").date() if start_date_str else None
        end_date = datetime.strptime(end_date_str, "%Y-%m-%d").date() if end_date_str else None

        if start_date:
            # Step 1: Get summary info grouped by client
            notes = db.session.query(
                ProgressNoteView.client,
                ProgressNoteView.account_id,
                ProgressNoteView.medicaid_id,
                ProgressNoteView.physician_name,
                ProgressNoteView.physician_npi,
                ProgressNoteView.physician_licence,
                ProgressNoteView.admission,
                ProgressNoteView.discharge,
                func.count().label('note_count')
            ).filter(
                (ProgressNoteView.medicaid > 0),
                (ProgressNoteView.notedate >= start_date),
                (ProgressNoteView.notedate <= end_date)
            ).group_by(
                ProgressNoteView.client,
                ProgressNoteView.account_id,
                ProgressNoteView.medicaid_id,
                ProgressNoteView.physician_name,
                ProgressNoteView.physician_npi,
                ProgressNoteView.physician_licence,
                ProgressNoteView.admission,
                ProgressNoteView.discharge
            ).all()
        
            results = []
        
            for note in notes:
                admission = note.admission or start_date
                discharge = note.discharge or end_date
                los_start = max(admission, start_date)
                los_end = min(discharge, end_date)
        
                # Full Length of Stay
                full_los = (los_end - los_start).days + 1 if los_start <= los_end else 0
        
                # Step 2: Get all inpatient episodes overlapping this LOS
                inpt_ranges = db.session.execute(
                    select(Inpatient.start_date, Inpatient.end_date)
                    .where(
                        Inpatient.client == note.client,
                        or_(
                            and_(Inpatient.start_date <= los_end,
                                 Inpatient.end_date   >= los_start),
                            and_(Inpatient.start_date <= los_end,
                                 Inpatient.end_date   == None)
                        )
                    )
                ).mappings().all()
        
                # Step 3: Calculate inpatient days from overlapping episodes
                inpt_days = 0
                episode_ranges = []  # for debugging/display
        
                for episode in inpt_ranges:
                    ep_start  = episode["start_date"]
                    ep_end    = episode["end_date"] or los_end
                    adj_start = max(ep_start, los_start)
                    adj_end   = min(ep_end, los_end)
                    if adj_start <= adj_end:
                        episode_ranges.append((adj_start, adj_end))
                        inpt_days += (adj_end - adj_start).days + 1
                # Perl-style: my $list_count = @episode_ranges;
                range_count = len(inpt_ranges)
        
                # Step 4: Adjust for net Medicaid LOS
                medicaid_los = max(0, full_los - inpt_days)
        
                # Step 5: Determine billing code based on billable LOS (medicaid_los)
                if medicaid_los >= 21:
                    bill_code = "MRF"
                elif medicaid_los >= 11:
                    midday = date(start_date.year, start_date.month, 15)
                    if los_start <= midday and los_end <= midday:
                        bill_code = 'SM1'
                    elif los_start > midday:
                        bill_code = 'SM2'
                    else:
                        days_in_first_half = (midday - los_start).days + 1 if los_start <= midday else 0
                        days_in_second_half = (los_end - midday).days if los_end > midday else 0
                        bill_code = 'SM1' if days_in_first_half >= days_in_second_half else 'SM2'
                else:
                    bill_code = "NON"
        
                # Step 6: Store result
                results.append({
                    "client": note.client,
                    "account_id": note.account_id,
                    "medicaid_id": note.medicaid_id,
                    "physician_name": note.physician_name,
                    "physician_licence": note.physician_licence,
                    "physician_npi": note.physician_npi,
                    "note_count": note.note_count,
                    "medicaid_los": medicaid_los,
                    "inpt_days": inpt_days,
                    "inpt_ranges": episode_ranges,
                    "inpt_count": range_count,
                    "bip_los": full_los,
                    "bill_code": bill_code,
                    "los_start": los_start,
                    "los_end": los_end,
                })
        
            # Step 7: Also gather the full notes for drill-down or audit
            sth = (
                select(ProgressNoteView)
                .where(
                    (ProgressNoteView.medicaid > 0) &
                    (ProgressNoteView.notedate >= start_date) &
                    (ProgressNoteView.notedate <= end_date)
                )
                .order_by(ProgressNoteView.client, ProgressNoteView.notedate)
            )
            corenotes = db.session.execute(sth).scalars().all()

            # Step 8: Create a dictionary for stacking a list of corenotes (summarised)

            from collections import defaultdict
            core_notes_detail = defaultdict(list)

            for note in corenotes:
                key = note.client  # assuming this is unique enough; use (note.client, note.account_id) if needed
                core_notes_detail[key].append({
                    "counter": len(core_notes_detail[key]) + 1,
                    "unit_lname": note.unit_lname,
                    "notedate": note.notedate,
                    "acronym": note.acronym
                })

            # Step 9: Render the three datasets
            return render_template('medicaid_charge_report.html', cores=corenotes, counts=results, note_map=core_notes_detail )
        
    return render_template("set_date.html", end_date=today, start_date=past_date)

@reports.route('/mpi')
@login_required
def mpi():
    sth = select(MPI.client_id, MPI.lname, MPI.fname, MPI.dob, MPI.ssn).select_from(MPI)
    results = db.session.execute(sth)
    return render_template('mpi.html', clients = results)

@reports.route('/note_report', methods=["GET", "POST"])
@login_required
def note_report():

    today, past_date = get_date(30)

    if request.method == "POST":
        start_date = request.form.get("start_date")
        end_date   = request.form.get("end_date")

        if start_date:
            queries = {
                "cores": lambda c: c.medicaid > 0,
                "notes": lambda c: c.medicaid == 0,
            }

            results = {}
            for label, condition in queries.items():
                sth = (
                    select(
                        ProgressNoteView.client,
                        ProgressNoteView.notedate,
                        ProgressNoteView.goal
                    )
                    .select_from(ProgressNoteView)
                    .where(
                        condition(ProgressNoteView) &
                        (ProgressNoteView.notedate >= start_date) &
                        (ProgressNoteView.notedate <= end_date)
                    )
                    .order_by(ProgressNoteView.client, ProgressNoteView.notedate)
                )
                results[label] = db.session.execute(sth)

            return render_template('progress_note_report.html', cores=results['cores'], notes=results['notes'])

    return render_template('set_date.html', end_date=today, start_date=past_date)

@reports.route('/occupancy_report')
@login_required
def occupancy_report():

    query = text("""
        SELECT
            x.client_id, x.fname, x.lname, x.dob, x.ssn,
            y.unit_lname, y.start_date
        FROM MPI x
        JOIN Placement y ON x.client_id = y.client_id
        WHERE y.end_date IS NULL
        ORDER BY y.unit_lname, x.lname, x.fname
    """)
    clients = db.session.execute(query).fetchall()

    return render_template('occupancy_report.html', clients = clients)

@reports.route('/occupancy_dict', methods=["GET", "POST"])
@login_required
def occupancy_dict():

    query = text("""
        SELECT
            x.client_id, x.fname, x.lname, x.dob, x.ssn,
            y.unit_lname, y.start_date
        FROM MPI x
        JOIN Placement y ON x.client_id = y.client_id
        WHERE y.end_date IS NULL
        ORDER BY y.unit_lname, x.lname, x.fname
    """)

    result = db.session.execute(query).mappings().all()
    # `mappings().all()` returns a list of dictionaries, simulating Perl hashrefs
    # for row in result:
    #   print(f"Unit: {row['unit_lname']}, Last Name: {row['lname']}, First Name: {row['fname']}")
    return render_template("occupancy_report.html", clients=result)

@reports.route('/unit_roster', methods=["GET", "POST"])
@login_required
def unit_roster():

    if request.method == "POST":
        unit_lname = request.form.get("unit_lname")

        if unit_lname:
            query = text("""
                SELECT x.client_id, x.fname, x.lname, x.dob, x.ssn,
                       y.unit_lname, y.start_date
                FROM MPI x, Placement y 
                WHERE x.client_id = y.client_id 
                AND y.end_date IS NULL 
                AND y.unit_lname = :unit_lname 
                ORDER BY y.unit_lname, x.lname, x.fname
             """)
            clients = db.session.execute(query, {'unit_lname': unit_lname}).fetchall()
            return render_template('unit_roster.html', clients=clients, unit_lname=unit_lname)

    units = Unit.query.all()
    return render_template('get_unit.html', units=units)

