#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER redmine WITH ENCRYPTED PASSWORD 'zDz9E3aeot2FFxv87NTC';
    CREATE DATABASE redmine;
    ALTER DATABASE redmine OWNER TO redmine;

EOSQL
