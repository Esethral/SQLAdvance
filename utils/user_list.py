#!/usr/bin/env python3

import os
import psycopg2
import psycopg2.extras
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

            curs.execute("SELECT user_id, username, fullname, email, trust, update, remove FROM users ORDER BY username")

            rows = curs.fetchall()

            print("\nSQL Advance User List:")
            print("\nUser ID, User Name, Full Name, Email Address, Trusted User (t/f), Update Privilege, Remove Privilege")
            print("----------------------------------------------------------------------------------------------------")
            print(*rows, sep = "\n")
            print("\n")

        except (Exception, psycopg2.DatabaseError) as error:
            print(error)

Exit = input ('Press Enter To Continue...')
print("Closing Session. Exiting...\n")

"""
 user_id  | SERIAL
 username | VARCHAR(80)
 fullname | VARCHAR(255)
 password | VARCHAR(255)
 email    | VARCHAR(255)
 track    | VARCHAR(25)
 trust    | CHAR(1)
 update   | VARCHAR(3)
 remove   | VARCHAR(3)
 phrase   | VARCHAR(40)
"""
