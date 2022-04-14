# # do a sleep to be sure that the db has been created 
# mysqld&
# until mysqladmin ping; do
# 	sleep 2
# 	echo "(fail to ping)"
# done
# # cd /root/


# # creating an admin user for my db 

# MYSQL_DATABASE=inception
# MYSQL_ROOT_PASSWORD=wordpress
# MYSQL_ROOT_USER=root
# MYSQL_USER=emaugale
# MYSQL_PASSWORD=1234

# mariadb -e "CREATE USER '$MYSQL_ROOT_USER'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'"
# mariadb -e "GRANT ALL PRIVILEGES ON * . * TO '$MYSQL_ROOT_USER'@'%'"
# # mariadb -e "GRANT ALL PRIVILEGES ON * . * TO '$MYSQL_ROOT_USER'@'localhost'" 
# mariadb -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE"
# mariadb -e "FLUSH PRIVILEGES"

# # creating an regular user 

# mariadb -e "CREATE USER '$MYSQL_USER'@'mariadb'"
# mariadb -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE . * TO '$MYSQL_USER'@'%'"
# # mariadb -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE . * TO '$MYSQL_USER'@'localhost'"
# mariadb -e "FLUSH PRIVILEGES"

# # delete root connection
# # mariadb -e "DELETE FROM mysql.user WHERE user=''"
# # mariadb -e "DELETE FROM mysql.user WHERE user='root'"
# mariadb -e "FLUSH PRIVILEGES"

# killall mysqld
mysqld 