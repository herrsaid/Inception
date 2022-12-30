FROM debian:buster

RUN apt update \
    && apt install wget php php-fpm php-mysql -y \
    && wget https://www.adminer.org/latest.php -O /var/www/html/index.php
COPY  conf/www.conf /etc/php/7.3/fpm/pool.d/