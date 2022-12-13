#!/bin/bash

wp config create --dbhost=mariadb \
    --dbname="wp" --dbuser="salamane" \
    --dbpass="Lamane@mariadb"  --allow-root

php-fpm7.3 -F -R