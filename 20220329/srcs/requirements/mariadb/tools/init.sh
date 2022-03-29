# # if [ ! -d /var/lib/mysql/$DB_NAME ]; then
# 	chown -R mysql:mysql /var/lib/mysql

# 	#Start MariaDB
# 	service mysql start
# 	#Create database & create user & alter root password & grant privileges
# 	mysql -e "CREATE DATABASE IF NOT EXISTS wordpress ;\
# 		CREATE USER IF NOT EXISTS 'hyopark'@'%' IDENTIFIED BY 'hyopark';\
# 		GRANT ALL PRIVILEGES ON wordpress.* TO 'hyopark'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
# 		#ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'; FLUSH PRIVILEGES;"
# 	#End MariaDB
# 	#mysqladmin -uroot -p$MYSQL_ROOT_PASSWORD shutdown
# # fi
chown -R mysql:mysql /var/lib/mysql
service mysql start
echo "CREATE DATABASE wordpress; \
CREATE USER 'hyopark'@'%' IDENTIFIED BY 'hyopark';\
GRANT ALL PRIVILEGES ON wordpress.* TO 'hyopark'@'%' WITH GRANT OPTION;\
USE wordpress;\
FLUSH PRIVILEGES;" >> mysqlset.sql

mysql < mysqlset.sql
