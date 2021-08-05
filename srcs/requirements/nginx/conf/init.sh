# mv /wp-config.php /var/www/wordpress
chown -R ndreadno:ndreadno /var/www/*
chmod -R 755 /var/www/*
nginx -g "daemon off;"
#/var/www/wordpress