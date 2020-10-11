#!/bin/bash

set -a
[ -f .env ] && . .env
set +a

#CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';
#GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

mysql --host=${MYSQL_HOST} -P${MYSQL_PORT} --protocol=TCP -uroot -p${MYSQL_ROOT_PASSWORD} -fe "CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED WITH mysql_native_password BY '${MYSQL_ROOT_PASSWORD}';GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;"
cat schema.sql | mysql --host=${MYSQL_HOST} -P${MYSQL_PORT} --protocol=TCP -uroot -p${MYSQL_ROOT_PASSWORD} -f
