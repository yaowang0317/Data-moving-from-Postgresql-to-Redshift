CREATE TABLE IF NOT EXISTS apps (
   pk integer PRIMARY KEY,
   id VARCHAR(256) UNIQUE NOT NULL,
   title VARCHAR(256) NOT NULL,
   description VARCHAR(2000),
   published_timestamp TIMESTAMP,
   last_update_timestamp TIMESTAMP
);

