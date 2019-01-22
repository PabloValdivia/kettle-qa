#!/bin/bash
docker run --rm mariadb:10.3 mysqldump -h $(route | grep '^default' | grep -o '[^ ]*$' | xargs -I{} ip addr show dev {} | grep 'inet' |  awk '{match($0,/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/); ip = substr($0,RSTART,RLENGTH); print ip}') --user=root --password=password --add-drop-database --add-drop-table --databases testdata > ./docker-entrypoint-initdb.d/testdata.sql
