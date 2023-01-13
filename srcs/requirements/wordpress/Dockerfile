FROM debian:buster

WORKDIR /var/www/html

RUN apt update && \
    apt install curl -y \
    && apt install php php-fpm php-mysql mariadb-client -y && \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
RUN chmod +x wp-cli.phar \
    && mkdir /run/php
RUN mv wp-cli.phar /usr/local/bin/wp \
&& rm /etc/php/7.3/fpm/pool.d/*
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY tools/script.sh /bin/

RUN chmod +x /bin/script.sh

EXPOSE 9000

CMD ["script.sh"]