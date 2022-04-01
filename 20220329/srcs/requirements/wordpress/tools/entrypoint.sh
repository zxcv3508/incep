
mv /tmp/wp-config.php /var/www/html/wp-config.php
chown -R www-data:www-data /var/www/html/*
chmod -R 777 /var/www/html/*
rm /var/www/html/wp-config-sample.php

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
chmod +x wp-cli.phar 
mv wp-cli.phar /usr/local/bin/wp

wp core --allow-root is-installed
if [ $? = 1 ]; then
	until wp core install --allow-root --url=$DOMAIN_NAME --title='WordPress for Inception' --admin_user=$WP_USER1 --admin_password=$WP_USER1_PW --admin_email="$WP_USER1@student.42seoul.kr" --path='/var/www/html' ; do
		echo "Waiting for MariaDB to start..."
		sleep 2
		done
	# wp core install --allow-root --url=$DOMAIN_NAME --title='WordPress for Inception' --admin_user=$WP_USER1 --admin_password=$WP_USER1_PW --admin_email="$WP_USER1@student.42seoul.kr" --path='/var/www/html'
	wp user create --allow-root $WP_USER2 $WP_USER2@student.42seoul.kr --user_pass=$WP_USER2_PW --role=author --path='/var/www/html'
fi

service php7.3-fpm start
service php7.3-fpm stop
php-fpm7.3 -F

#php-fpm7.3 --nodaemonize