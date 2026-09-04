#!/usr/bin/env python3

import os
cmd = "clear"
os.system(cmd)
rec_id = int(input("Enter rec_id: "))

import psycopg2

from connection import get_conn
conn = get_conn()

with conn:

    with conn.cursor() as curs:

        query = "SELECT rec_id, unit_lname, staff_name, logdate, lognote FROM unitlog WHERE rec_id = %s;"
        curs.execute(query, (rec_id,))
        row = curs.fetchone()
        print(f"ID: {row[0]}, Unit: {row[1]}, User: {row[2]}, Date: {row[3]}")
        print(f"Note: {row[4]}")

input ('Press Enter To Continue...')

