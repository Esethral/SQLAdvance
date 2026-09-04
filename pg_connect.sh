#!/bin/bash

DB_PASSWORD=$(PYTHONPATH=/opt/flask-app python3 -c 'from config.database import DB_PASSWORD; print(DB_PASSWORD)')
export PGPASSWORD="$DB_PASSWORD"
psql -U www-data flask
unset PGPASSWORD
