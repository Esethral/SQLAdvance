#!/opt/flask-app/flask-venv/bin/python
import psycopg2
import os
os.system("clear")
from werkzeug.security import generate_password_hash

from connection import get_conn
conn = get_conn()
cur = conn.cursor()

query = "SELECT user_id, username, fullname FROM users ORDER BY username"
cur.execute(query)

rows = cur.fetchall()

print("\n\nID -- Name")
print("-------------------")

for row in rows:
    print(f"[{row[0]}] -- {row[1]}, {row[2]}")

try:
    userid = int(input("\nEnter User ID: ").strip())
except ValueError:
    print("Invalid User ID")
    raise SystemExit(1)

from getpass import getpass
SHOW_PASSWORD = True

if SHOW_PASSWORD:
    passwd = input("\nEnter New Password: ").strip()
else:
    passwd = getpass("\nEnter New Password: ")

pw_hash = generate_password_hash(passwd, method='pbkdf2', salt_length=16)
user_password = pw_hash

query = """
UPDATE users SET password = %s
WHERE user_id = %s
"""
cur.execute(query, (user_password, userid,))
if cur.rowcount != 1:
    print("User not found.")
    conn.rollback()
    raise SystemExit(1)
conn.commit()
print("Password updated.")
cur.close()
conn.close()

input("Press ENTER to Continue...")

