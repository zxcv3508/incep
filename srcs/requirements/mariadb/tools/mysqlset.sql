CREATE DATABASE wordpress;
CREATE USER 'hyopark'@'%' IDENTIFIED BY 'hyopark';
GRANT ALL PRIVILEGES ON wordpress.* TO 'hyopark'@'%' WITH GRANT OPTION;
/*grant all privileges on dbname.table to userid@host identified by 'password';*/
USE wordpress;
FLUSH PRIVILEGES;
/*change save*/