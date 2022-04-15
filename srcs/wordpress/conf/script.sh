# cd /var/www/
wp core download --allow-root
# wp config create --allow-root
# moving my php config file
cp /etc/wp-config.php /var/www
# changing rights of my php config 
chmod -R 755 /var/www/
# do a loop until i am correctly connected to my database


until mysqladmin -hmariadb -u${MYSQL_ROOT_USER} -p${MYSQL_ROOT_PASSWORD} ping && \
         mariadb -hmariadb -u${MYSQL_ROOT_USER} -p${MYSQL_ROOT_PASSWORD} -e "SHOW DATABASES;" | grep ${MYSQL_DATABASE}; do
    sleep 2
    echo "waiting to connect..."
done
echo "successfuly connected to db"

# some help for the different commands 
#                --- https://developer.wordpress.org/cli/commands/user/create/ --- 
wp core install --url="emaugale.42.fr" --title="Test" --admin_user="${MYSQL_ROOT_USER}" \
    --admin_password="${MYSQL_ROOT_PASSWORD}" --admin_email="admin@admin.fr" --skip-email --allow-root
wp config create --dbname="$MYSQL_DATABASE" --dbuser="$MYSQL_USER" --dbpass="$MYSQL_PASSWORD"  --allow-root 
wp user create emaugale test@example.com --role=author  --allow-root

php-fpm7.3 -F -R