#!/bin/bash

wp config create --dbhost=mariadb \
    --dbname="wp" --dbuser="salamane" \
    --dbpass="Lamane@mariadb"  --allow-root
wp core install --allow-root --url=salamane.42.fr \
    --title=Website --admin_user=salamane \
    --admin_password="strongpassword" \
    --admin_email=saidbm3w@gmail.com
php-fpm7.3 -F -R