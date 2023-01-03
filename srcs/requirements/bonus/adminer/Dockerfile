FROM debian:buster

WORKDIR /var/www/adminer/

RUN apt update \
    && apt install wget php php-mysql -y \
    && wget https://www.adminer.org/latest.php -O /var/www/adminer/index.php

CMD [ "php", "-S", "0.0.0.0:8000" ]