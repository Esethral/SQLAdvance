#!/usr/bin/env python3
# Python Psycopg2 version

import psycopg2
import os
os.system("clear")

from connection import get_conn
conn = get_conn()
cur = conn.cursor()

query = "SELECT client_id, lname, fname FROM mpi ORDER BY lname"
cur.execute(query)

rows = cur.fetchall()

print("\n\nID -- Name")
print("-------------------")

for row in rows:
    print(f"[{row[0]}] -- {row[1]}, {row[2]}")

id = input("\nEnter Client ID: ").strip()

query = """
SELECT lname, fname, dob,
       EXTRACT(YEAR FROM AGE(dob))::int AS age,
       AGE(dob)::text AS detail
FROM mpi
WHERE client_id = %s
"""

cur.execute(query, (id,))
result = cur.fetchone()

cur.close()
conn.close()

if not result:
    print(f"No record for Client ID {id} found.")
else:
    lname, fname, dob, age, detail = result
    print(f"\n\n[{id}] {fname} {lname} is {int(age)} years of age. (DOB: {dob}, AGE: {detail})\n")

input("Press ENTER to Continue...")

