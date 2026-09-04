#!/usr/bin/env python3

import os
import psycopg2

from connection import get_conn
conn = get_conn()

with conn:
    with conn.cursor() as curs:

        curs.execute("""
            SELECT sequence_name
            FROM information_schema.sequences
            WHERE sequence_name LIKE '%rec_id_seq';
        """)

        sequences = curs.fetchall()

        for (seq,) in sequences:

            table = seq.replace('_rec_id_seq', '')

            curs.execute(f"""
                SELECT setval(
                    %s,
                    COALESCE((SELECT MAX(rec_id) FROM {table}), 0) + 1,
                    false
                );
            """, (seq,))

            print(f"{table}: {seq} Sequence Reset (Last Value: {curs.fetchone()[0]})")

print(f"\nReset {len(sequences)} rec_id sequences")

conn.close()
input ('Press Enter To Continue...')
