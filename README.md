# Data-moving-from-Postgresql-to-Redshift
The goal of this task is to generate some random data, store it in Postgresql and then create a Python script for moving the data from Postgresql to Amazon Redshift
(https://aws.amazon.com/documentation/redshift/). Postgresql needs to be installed locally.

##1. Create a table in Postgres with the following schema:
```
CREATE TABLE IF NOT EXISTS apps (
   pk integer PRIMARY KEY,
   id VARCHAR(256) UNIQUE NOT NULL,
   title VARCHAR(256) NOT NULL,
   description VARCHAR(2000),
   published_timestamp TIMESTAMP,
   last_update_timestamp TIMESTAMP
);
```
##2. Use psql to connect to a database
```
psql -U postgres -d apps
```

##3. Use Python to connect to PostgreSQL
Make sure you have python package psycopg2 installed. If not and if you're using anaconda, simply run ```conda install -c anaconda psycopg2```
Fill in the relevant username, database, password, and domain name.
```
from psycopg2 import sql, Error, connect
try:
    # declare a new PostgreSQL connection object
    conn = connect(
        dbname = "postgres",
        user = "postgres",
        host = "localhost",
        password = "123456",
        # attempt to connect for 3 seconds then raise exception
        connect_timeout = 3
    )

    cur = conn.cursor()
    print ("\ncreated cursor object:", cur)

except Error as err:
    print ("\npsycopg2 connect error:", err)
    conn = None
    cur = None
```
##4. Generate random rows based on the table schema. See p1.py

