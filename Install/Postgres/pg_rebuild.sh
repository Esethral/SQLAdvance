#!/bin/bash
clear
psql -U tag flask < db_kill.sql

DB_PASSWORD=$(PYTHONPATH=/opt/flask-app python3 -c 'from config.database import DB_PASSWORD; print(DB_PASSWORD)')
export PGPASSWORD="$DB_PASSWORD"

dropdb -U www-data -h localhost -w flask
createdb -U www-data -h localhost -w flask
psql -U www-data -h localhost -w -d flask < database.df

unset PGPASSWORD

sudo rm /var/log/apache2/flask-*.log*
sudo systemctl restart apache2

date >> rebuild.log

echo "Updating permissions on SQLAdvance..."

sudo chown -R tag:flaskdev /opt/flask-app
sudo chmod -R o+rX /opt/flask-app
sudo find /opt/flask-app -type d -exec chmod 775 {} \;
sudo chmod g+s /opt/flask-app
sudo chown -R www-data:www-data /opt/flask-app/log/*
sudo chown -R www-data:www-data /opt/flask-app/photos/*
sudo chmod 2777 /opt/flask-app/log

read -p "Press ENTER to Continue..."
