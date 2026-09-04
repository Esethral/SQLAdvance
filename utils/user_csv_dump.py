#!/usr/bin/env python3

import os
cmd = "clear"
os.system(cmd)

import csv
import os
import psycopg2
import psycopg2.extras

cmd = "clear"
os.system(cmd)

try:
    from connection import get_conn
    conn = get_conn()

except:
    print("No Database Connection.")

with conn:

    with conn.cursor() as curs:

        try:

            curs.execute("SELECT user_id, username, fullname, email FROM users ORDER BY username")

            rows = curs.fetchall()

            print("\nSQLAdvance Users:")
            print(*rows, sep = "\n")
            print("\n")

        except (Exception, psycopg2.DatabaseError) as error:
            print(error)

    with open("./user_list.csv", "w", newline="") as f:

        writer = csv.writer(f)
        writer.writerow([col[0] for col in curs.description])
        writer.writerows(rows)

print("User List dumped to CSV file: user_list.csv")
input ('Press Enter To Continue...')

