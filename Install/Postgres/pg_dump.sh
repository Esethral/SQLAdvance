#!/bin/bash
DB_PASSWORD=$(PYTHONPATH=/opt/flask-app python3 -c 'from config.database import DB_PASSWORD; print(DB_PASSWORD)')
export PGPASSWORD="$DB_PASSWORD"
pg_dump -U www-data --column-inserts flask > database.df
pg_dump -U www-data -s flask > database_schema.sql
pg_dump -U www-data -a flask > database_data.sql
unset PGPASSWORD
