{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c99985;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec3 #!/usr/bin/env python3\
"""Minimal Microsoft SQL Server CGI example for FY2026 HMIS validation."""\
\
import os\
from contextlib import closing\
from html import escape\
import pyodbc\
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
    # Set SQLSERVER_CONNECTION_STRING in the web server environment.\
    # Example: DRIVER=\{ODBC Driver 18 for SQL Server\};SERVER=localhost;\
    #          DATABASE=flask;UID=web_reader;PWD=secret;Encrypt=yes;\
    #          TrustServerCertificate=no;\
    with closing(pyodbc.connect(os.environ["SQLSERVER_CONNECTION_STRING"])) as connection:\
        with closing(connection.cursor()) as cursor:\
            cursor.execute(SQL)\
            print("<table border='1'><tr><th>Severity</th><th>Check Type</th>"\
                  "<th>Check Name</th><th>Description</th></tr>")\
            for row in cursor:\
                print("<tr>" + "".join(\
                    f"<td>\{escape(str(value) if value is not None else '')\}</td>"\
                    for value in row\
                ) + "</tr>")\
            print("</table>")\
except (pyodbc.Error, KeyError):\
    print("<p>Unable to retrieve validation checks. Check server logs.</p>")\
\
print("</body></html>")\
}