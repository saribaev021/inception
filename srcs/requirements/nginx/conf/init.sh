cp -r /wordpress/* /var/www/wordpress/
# mv /wp-config.php /var/www/wordpress
chown -R ndreadno:ndreadno /var/www/*
chmod -R 755 /var/www/*
nginx -g "daemon off;"
