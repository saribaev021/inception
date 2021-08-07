#!/bin/sh


service mysql start
mysql -u root < set_root_password.sql
mysql -u root -p${MYSQL_ROOT_PASSWORD} mysql  < init_db.sql;
mysql -u root -p${MYSQl_ROOT_PASSWORD} wordpress < wordpress.sql;
service mysql stop 
/usr/bin/mysqld_safe ;

#drwxr-xr-x
