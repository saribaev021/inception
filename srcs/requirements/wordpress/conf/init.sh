cp -r /wordpress/* /var/www/wordpress
mv /wp-config.php /var/www/wordpress
chown -R www-data:www-data /var/www/*
chmod -R 777 /var/www/*
# chown -R www-data:www-data /run/php/*
# chmod -R 755 /run/php/*
/usr/sbin/php-fpm7.3 -F 
