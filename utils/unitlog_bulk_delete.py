#!/usr/bin/env python3

import os
cmd = "clear"
os.system(cmd)

print("This script will remove all Unit Log entries greater than the ID entered.\n")
rec_id = int(input("Enter rec_id: "))

import psycopg2

from connection import get_conn
conn = get_conn()

with conn:

    with conn.cursor() as curs:

        query = "DELETE FROM unitlog WHERE rec_id > %s;"
        curs.execute(query, (rec_id,))

        query = "SELECT rec_id, unit_lname, staff_name, logdate FROM unitlog WHERE rec_id < %s;"
        curs.execute(query, (rec_id,))
        records = curs.fetchall()
        
        print(f"Total rows retrieved: {len(records)}")
        for row in records:
            print(f"ID: {row[0]}, Unit: {row[1]}, User: {row[2]}, Date: {row[3]}")

input ('Press Enter To Continue...')

