# cd /var/www/
wp core download --allow-root
# wp config create --allow-root
# moving my php config file
cp /etc/wp-config.php /var/www
# changing rights of my php config 
chmod -R 755 /var/www/
# do a loop until i am correctly connected to my database

MYSQL_DATABASE=inception
MYSQL_ROOT_PASSWORD=wordpress
MYSQL_ROOT_USER=root
MYSQL_USER=emaugale
MYSQL_PASSWORD=1234

until mysqladmin -hmariadb -u${MYSQL_ROOT_USER} -p${MYSQL_ROOT_PASSWORD} ping && \
         mariadb -hmariadb -u${MYSQL_ROOT_USER} -p${MYSQL_ROOT_PASSWORD} -e "SHOW DATABASES;" | grep ${MYSQL_DATABASE}; do
    sleep 2
    echo "waiting to connect..."
done
echo "msuccessfuly connected to db"

# some help for the different commands 
#                --- https://developer.wordpress.org/cli/commands/user/create/ --- 
wp core install --url="emaugale.42.fr" --title="Test" --admin_user="${MYSQL_ROOT_USER}" \
    --admin_password="${MYSQL_ROOT_PASSWORD}" --admin_email="admin@admin.fr" --skip-email --allow-root
# wp user create bob bob@example.com --role=author --allow-root


php-fpm7.3 -F -R