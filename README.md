# Data-moving-from-Postgresql-to-Redshift
The goal of this task is to generate some random data, store it in Postgresql and then create a Python script for moving the data from Postgresql to Amazon Redshift
(https://aws.amazon.com/documentation/redshift/). Postgresql needs to be installed locally.

##1. Create a table in Postgres and Redshift with the following schema. Also see s1.sql.
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
##2. Generate random rows based on the table schema. See p1.ipynb
Make sure you have python package psycopg2 installed. If not and if you're using anaconda, simply run ```conda install -c anaconda psycopg2```
Fill in the relevant username, database, password, and domain name.

##3. Dump the data from Postgresql to a gzipped CSV file. See p2.ipynb

##4. Upload the gzipped CSV to Amazon S3. See p3.ipynb

##5. Load the data from Amazon S3 to Redshift. See p4.ipynb

