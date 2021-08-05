cp -r /wordpress/* /var/www/wordpress
# mv /wp-config.php /var/www/wordpress
chown -R www-data:www-data /var/www/*
chmod -R 777 /var/www/*
# chown -R www-data:www-data /run/php/*
# chmod -R 755 /run/php/*

cd /var/www/wordpress
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod 777 wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
# wp --allow-root db check

/usr/sbin/php-fpm7.3 -F 
