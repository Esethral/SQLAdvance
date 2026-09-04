#!/usr/bin/env python3

import os
import psycopg2
from connection import get_conn

cmd = "clear"
os.system(cmd)

try:
    conn = get_conn()
except:
    print("No Database Connection.")

with conn:

    with conn.cursor() as curs:

        try:

            curs.execute("SELECT x.user_id, x.username, x.fullname, y.user_email, y.alert, y.incident, y.property, y.support \
                          FROM users x, email_notification y \
                          WHERE x.user_id = y.user_id ORDER BY x.username")

            rows = curs.fetchall()

            print("\nUser ID, User Name, Full Name, Email Address, Alerts, Incidents, Maintenance, Tech Support")
            print("----------------------------------------------------------------------------------------------------")
            print(*rows, sep = "\n")
            print("\n")

        except (Exception, psycopg2.DatabaseError) as error:
            print(error)

input ('Press Enter To Continue...')

"""


 email_notification
 -------------------------
 user_id    | INTEGER
 user_name  | VARCHAR(255)
 user_email | VARCHAR(255)
 alert      | VARCHAR(8)
 incident   | VARCHAR(8)
 property   | VARCHAR(8)
 support    | VARCHAR(8)
"""
