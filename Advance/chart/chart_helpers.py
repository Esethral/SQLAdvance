from .chart_models import db
from .chart_models import MPI, Diagnosis_DSM5, Diagnosis_ICD10
from sqlalchemy import select, desc

def get_client(client_id):
    return db.session.query(
        MPI.client_id,
        MPI.fname,
        MPI.lname
    ).filter(MPI.client_id == client_id).first()

def get_diag_lists():
    dsm5 = db.session.execute(
        select(Diagnosis_DSM5.dsm5)
    ).scalars().all()

    icd10 = db.session.execute(
        select(Diagnosis_ICD10.icd10)
        .where(Diagnosis_ICD10.icd10.like('F%'))
    ).scalars().all()

    return dsm5, icd10

# def get_rows(model, client_id, order_field=None):
#     q = db.session.query(model).filter(model.client_id == client_id)
# 
#     if order_field is not None:
#         q = q.order_by(desc(order_field))
# 
#     return q.all()

def get_rows(model, client_id, order_field=None, latest=False):

    q = db.session.query(model).filter(model.client_id == client_id)

    if order_field is not None:
        q = q.order_by(desc(order_field))

    if latest:
        return q.first()

    return q.all()
