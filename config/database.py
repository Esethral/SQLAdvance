# Development database configuration.
#
# This file is intentionally part of the distribution so SQLAdvance
# can be started immediately after installation.
#
# For production deployments, move these values outside the source
# tree and load them from environment variables or a protected
# configuration file.

DB_HOST = "localhost"
DB_PORT = 5432
DB_NAME = "flask"
DB_USER = "www-data"
DB_PASSWORD = "Your_Flask_Password_Here"

DATABASE_URI = (
    f"postgresql://{DB_USER}:{DB_PASSWORD}"
    f"@{DB_HOST}:{DB_PORT}/{DB_NAME}"
)
