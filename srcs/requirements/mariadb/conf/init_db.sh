#!/bin/sh


service mysql start
mysql -u root mysql < init_db.sql;
service mysql stop 
/usr/bin/mysqld_safe ;

#drwxr-xr-x