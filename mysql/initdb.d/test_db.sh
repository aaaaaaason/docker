#!/bin/bash

cd /docker-entrypoint-initdb.d/test_db && mysql -u root --password=$MYSQL_ROOT_PASSWORD < employees.sql && cd -