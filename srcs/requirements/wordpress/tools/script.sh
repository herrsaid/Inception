#!/bin/bash

wp config create --dbhost=mariadb \
    --dbname="wp" --dbuser="salamane" \
    --dbpass="Lamane@mariadb"  --allow-root
wp core install --allow-root --url=10.12.177.80 \
    --title=Website --admin_user=salamane \
    --admin_password="strongpassword" \
    --admin_email=saidbm3w@gmail.com

wp plugin install redis-cache --activate --allow-root

wp config set WP_REDIS_PORT "6379" --allow-root
wp config set WP_REDIS_HOST "redis" --allow-root
wp redis enable --allow-root

php-fpm7.3 -F -R