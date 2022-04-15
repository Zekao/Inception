
MYSQL_DATABASE=inception
MYSQL_ROOT_PASSWORD=wordpress
MYSQL_ROOT_USER=root
MYSQL_USER=emaugale
MYSQL_PASSWORD=1234


touch tmp_file
chmod 755 tmp_file

cat << stop_file > tmp_file
CREATE DATABASE inception;
USE inception;
FLUSH PRIVILEGES ;
GRANT ALL ON *.* TO 'root'@'%' identified by '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION ;
GRANT ALL ON *.* TO 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION ;
SET PASSWORD FOR 'root'@'localhost'=PASSWORD('${MYSQL_ROOT_PASSWORD}') ;
FLUSH PRIVILEGES ;
GRANT ALL ON \`$MYSQL_DATABASE\`.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
DROP DATABASE IF EXISTS test ;
FLUSH PRIVILEGES ;
stop_file

echo "Test to see if my tmp_file is correctly created"
cat tmp_file
mysqld --user=mysql --bootstrap --verbose=0 --skip-name-resolve --skip-networking=0 < tmp_file
exec mysqld --user=mysql --console --skip-name-resolve --skip-networking=0 $@