FROM debian:buster

RUN apt update \
    && apt install nginx -y

COPY conf/default /etc/nginx/sites-enabled/
COPY tools/site /var/www/html

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]