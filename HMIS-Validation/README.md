::::::::::::::
README
::::::::::::::

Earlier this month the NYC Department of Social Services rolled out validation checks on the CaseWorthy "ClientInsight" HMIS data upload application.  The validation checks are based on the FY2026 HUD HMIS CSV format specification and related data dictionary. Subsequently DSS published a pdf listing all of the data integrity / validation checks. As this information is useful to service providers working with the homeless population the SQL Advance team has extracted the data and created SQL build scripts. The build scripts are faithful to the pdf in terms of both structure and content. SQL Advance is releasing four variants of the scripts for any agency or programmer interested in having a vehicle to facilitate regression testing on local applications or simply having the ability to sort the validation data in various ways including by severity: CRITICAL and ERROR fatals and WARNING advisories for data integrity issues that may impact overall data quality. 

There are four build scripts available, one for each of four major database engines: PostgreSQL, Oracle, Sybase ASE and SQL Server. There are two CGI scripts available for accessing the data: one for Postgres and one for SQL Server.

It is hoped that implementation, in whatever manner deemed appropriate, might facilitate in-house testing of data prior to uploading to CaseWorthy. This has the potential to save time and reduce frustration.  

SQL Advance developers created the SQL scripts with a view towards building a Validation.pm module for the Perl CGI.pm based SQL Clinic legacy application and a validation.py module for the Python Flask based SQL Advance application, an early version of which is now available on github. The team is actively developing a second iteration of SQL Advance which will have a complete HUD HMIS module including validation checks based on the DSS dataset.

## Official DHS Validation Checklist

The SQL build scripts are based on the NYC DHS/DSS HMIS validation checklist, last updated November 2, 2026.

[View the official DHS Validation Checklist (PDF)](https://www.nyc.gov/assets/nycccoc/downloads/pdf/validation_checks-v2026-11-02.pdf)
