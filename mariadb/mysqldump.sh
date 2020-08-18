#!/bin/sh

set -eu

while :
do
    sleep 1h
    mysqldump --single-transaction \
        -h mariadb \
        -u root \
        -p"${MYSQL_ROOT_PASSWORD}" \
        "${MYSQL_DATABASE}" > "/var/lib/mysql/${MYSQL_DATABASE}-mysqldump.sql"
done