#!/bin/bash
# service  mysql start
# echo "create database IF NOT EXISTS ${DB_NAME};" | mysql
# echo "create user '${DB_USER}'@'%' identified by '${DB_PASSWORD}';" | mysql
# echo "grant all privileges on '${DB_NAME}'.* to '${DB_USER}'@'%' ;" | mysql
# echo "flush privileges;" | mysql

service  mysql start
mysql -e "create database IF NOT EXISTS ${DB_NAME};"
mysql -e "create user '${DB_USER}'@'%' identified by '${DB_PASSWORD}';"
mysql -e "grant all privileges on ${DB_NAME}.* to '${DB_USER}'@'%' ;"
mysql -e "flush privileges;"
mysql -e "alter user 'root'@'localhost' identified by 'Root@mariadb';"
# service  mysql stop
# mysqld
