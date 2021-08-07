ALTER USER root@localhost IDENTIFIED VIA mysql_native_password;
SET PASSWORD = PASSWORD('root');
FLUSH PRIVILEGES;
CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER ltheresi@localhost IDENTIFIED BY 'ltheresi';
GRANT ALL PRIVILEGES ON *.* TO ltheresi@localhost;
FLUSH PRIVILEGES;
