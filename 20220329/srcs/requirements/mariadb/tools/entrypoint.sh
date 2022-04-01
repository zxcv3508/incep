
if [ ! -e /var/lib/mysql/$MYSQL_DB_NAME ]; then
	chown -R mysql:mysql /var/lib/mysql
	service mysql start
	echo "sql start"
	mysql -e  "CREATE DATABASE IF NOT EXISTS $MYSQL_DB_NAME;\
	CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';\
	GRANT ALL PRIVILEGES ON $MYSQL_DB_NAME.* TO '$MYSQL_USER'@'%' WITH GRANT OPTION;\
	USE $MYSQL_DB_NAME;FLUSH PRIVILEGES;"
	#\ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'; FLUSH PRIVILEGES;"
	#mysqladmin -uroot -p$MYSQL_ROOT_PASSWORD shutdown
	service mysql stop
	echo "sql done"
fi
	mv /tmp/my.cnf /etc/mysql/my.cnf
	# service mysql restart

exec mysqld_safe
