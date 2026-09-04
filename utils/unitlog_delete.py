#!/usr/bin/env python3

import os
cmd = "clear"
os.system(cmd)

print("This script will remove a single Unit Log entry using the ID entered.\n")
rec_id = int(input("Enter rec_id: "))

import psycopg2

from connection import get_conn
conn = get_conn()

with conn:

    with conn.cursor() as curs:

        query = "DELETE FROM unitlog WHERE rec_id = %s;"
        curs.execute(query, (rec_id,))

input ('Press Enter To Continue...')

