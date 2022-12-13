FROM debian:buster

RUN apt-get update \
    && apt-get install -y nginx \
    && echo "daemon off;" >> /etc/nginx/nginx.conf \
    && rm /etc/nginx/sites-enabled/*

COPY conf/default /etc/nginx/sites-enabled

EXPOSE 443
CMD ["nginx"]