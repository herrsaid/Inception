#!/bin/bash
wp core download --allow-root \
     && chown -R www-data:www-data /var/www/html

wp config create --dbhost=mariadb \
    --dbname=${DB_NAME} --dbuser=${DB_USER} \
    --dbpass=${DB_PASSWORD}  --allow-root

wp core install --allow-root --url=10.12.177.80 \
    --title=Website --admin_user=${WP_ADMIN_USER} \
    --admin_password=${WP_ADMIN_PASSWORD} \
    --admin_email=saidbm3w@gmail.com

wp plugin install redis-cache --activate --allow-root

wp config set WP_REDIS_PORT "6379" --allow-root
wp config set WP_REDIS_HOST "redis" --allow-root
wp redis enable --allow-root

php-fpm7.3 -F -R