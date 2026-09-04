#!/bin/bash
DB_PASSWORD=$(PYTHONPATH=/opt/flask-app python3 -c 'from config.database import DB_PASSWORD; print(DB_PASSWORD)')
export PGPASSWORD="$DB_PASSWORD"

pg_dump -U www-data --exclude-table=diagnosis_dsm5 --exclude-table=diagnosis_icd10 --exclude-table=diagnosis_dsm5_rec_id_seq --exclude-table=diagnosis_icd10_rec_id_seq --exclude-table=volatile_view --column-inserts flask > database.df
pg_dump -U www-data --exclude-table=diagnosis_dsm5 --exclude-table=diagnosis_icd10 --exclude-table=diagnosis_dsm5_rec_id_seq --exclude-table=diagnosis_icd10_rec_id_seq --exclude-table=volatile_view -s flask > database_schema.sql
pg_dump -U www-data --exclude-table=diagnosis_dsm5 --exclude-table=diagnosis_icd10 --exclude-table=diagnosis_dsm5_rec_id_seq --exclude-table=diagnosis_icd10_rec_id_seq --exclude-table=volatile_view -a flask > database_data.sql
unset PGPASSWORD
