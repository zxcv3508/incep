if [ ! -e /var/lib/mysql/$MYSQL_DB_NAME ]; then
	chown -R mysql:mysql /var/lib/mysql
	service mysql start
	echo "sql start"
	mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DB_NAME;\
	CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';\
	GRANT ALL PRIVILEGES ON $MYSQL_DB_NAME.* TO '$MYSQL_USER'@'%' WITH GRANT OPTION;\
	USE $MYSQL_DB_NAME;\
	FLUSH PRIVILEGES;"
	
	mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
	mysqladmin -uroot -p$MYSQL_ROOT_PASSWORD shutdown

	echo "sql done"
fi
	cp /tmp/my.cnf /etc/mysql/my.cnf
	service mysql start
	mysqladmin -uroot -p$MYSQL_ROOT_PASSWORD shutdown

exec mysqld_safe
