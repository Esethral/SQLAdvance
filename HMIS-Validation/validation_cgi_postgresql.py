{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c99985;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 #!/usr/bin/env python3\
"""Minimal PostgreSQL CGI example for the FY2026 HMIS validation table."""\
\
import os\
from html import escape\
from contextlib import closing\
import psycopg2\
\
SQL = """SELECT severity, check_type, check_name, description\
         FROM hud_hmis_validation_fy2026\
         ORDER BY severity"""\
\
print("Content-Type: text/html; charset=utf-8\\n")\
print("<!doctype html><html lang='en'><head><meta charset='utf-8'>")\
print("<title>HMIS Validation Checks</title></head><body>")\
print("<h1>HMIS Validation Checks</h1>")\
\
try:\
    with closing(psycopg2.connect(\
        dbname=os.environ.get("PGDATABASE", "flask"),\
        host=os.environ.get("PGHOST", "localhost"),\
        user=os.environ.get("PGUSER", "www-data"),\
        password=os.environ["PGPASSWORD"],\
        port=os.environ.get("PGPORT", "5432"),\
    )) as connection:\
        with connection.cursor() as cursor:\
            cursor.execute(SQL)\
            print("<table border='1'><tr><th>Severity</th><th>Check Type</th>"\
                  "<th>Check Name</th><th>Description</th></tr>")\
            for row in cursor:\
                print("<tr>" + "".join(\
                    f"<td>\{escape(str(value) if value is not None else '')\}</td>"\
                    for value in row\
                ) + "</tr>")\
            print("</table>")\
except (psycopg2.Error, KeyError):\
    print("<p>Unable to retrieve validation checks. Check server logs.</p>")\
\
print("</body></html>")\
}