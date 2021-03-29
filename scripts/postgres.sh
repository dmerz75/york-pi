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
    > create table people (name text, company text);
    > insert into people values ('Ben Nuttall', 'Raspberry Pi Foundation');
    > insert into people values ('Rikki Endsley', 'Red Hat');
    > select * from people;
    > select name from people where company = 'Red Hat';
}

# create_db
#


# 1. create db
# 2. ufw
# 3. use port forwarding, connect with putty/tunnel
#    Run ifconfig on the Raspberry Pi. Try Putty with that address.
# 4. https://www.postgresql.org/ftp/pgadmin/pgadmin4/v5.1/windows/


