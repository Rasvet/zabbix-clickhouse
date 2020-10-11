#!/bin/bash

set -a
[ -f .env ] && . .env
set +a

cat schema.sql | docker exec -it mysql-server-80 mysql --host=localhost --protocol=TCP -uroot -p${MYSQL_ROOT_PASSWORD}

