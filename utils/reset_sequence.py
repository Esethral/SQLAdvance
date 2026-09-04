#!/usr/bin/env python3

import os
import psycopg2

from connection import get_conn
conn = get_conn()

with conn:
    with conn.cursor() as curs:

        curs.execute(f"""
             -- SELECT SETVAL('mpi_client_id_seq',(SELECT MAX(client_id) FROM mpi));
             SELECT setval(pg_get_serial_sequence('mpi', 'client_id'), COALESCE(max(client_id), 0) + 1, false) FROM mpi;
        """)
        print(f"MPI: mpi_client_id_seq Sequence Reset (Last Value: {curs.fetchone()[0]})")

        curs.execute(f"""
             SELECT setval(pg_get_serial_sequence('login', 'user_id'), COALESCE(max(user_id), 0) + 1, false) FROM login;
        """)
        print(f"login: login_user_id_seq Sequence Reset (Last Value: {curs.fetchone()[0]})")

        curs.execute(f"""
             SELECT setval(pg_get_serial_sequence('unit', 'unit_id'), COALESCE(max(unit_id), 0) + 1, false) FROM unit;
        """)
        print(f"unit: unit_unit_id_seq Sequence Reset (Last Value: {curs.fetchone()[0]})")

        curs.execute(f"""
             SELECT setval(pg_get_serial_sequence('users', 'user_id'), COALESCE(max(user_id), 0) + 1, false) FROM users;
        """)
        print(f"login: users_user_id_seq Sequence Reset (Last Value: {curs.fetchone()[0]})")

conn.close()
input ('Press Enter To Continue...')

"""
 mpi_client_id_seq
 login_user_id_seq
 unit_unit_id_seq
 users_user_id_seq
"""
