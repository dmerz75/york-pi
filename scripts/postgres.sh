#!/bin/bash

echo "postgres database management.."
# sudo su postgres
# https://opensource.com/article/17/10/set-postgres-database-your-raspberry-pi

create_db () {
    sudo apt install postgresql libpq-dev postgresql-client
    postgresql-client-common -y
    sudo su postgres
    createuser pi -P --interactive
    psql
    > create database test;
    psql test
    test=> create table people (name text, company text);
    test=> insert into people values ('Ben Nuttall', 'Raspberry Pi
    Foundation');
    test=> insert into people values ('Rikki Endsley', 'Red Hat');
    test=> select * from people;
    test=> select name from people where company = 'Red Hat';
}

# create_db


