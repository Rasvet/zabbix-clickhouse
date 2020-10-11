#!/bin/bash

set -a
[ -f .env ] && . .env
set +a

cat schema.sql | mysql -h 127.0.0.1 -uroot -p${MYSQL_ROOT_PASSWORD}