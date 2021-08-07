#!/bin/sh
service mysql start
mysql -u root mysql < init_db.sql;
mysql -u root -proot wordpress < wordpress.sql;
service mysql stop 
/usr/bin/mysqld_safe;
