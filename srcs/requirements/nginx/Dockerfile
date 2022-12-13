FROM debian:buster

RUN apt-get update \
    && apt-get install -y nginx openssl \
    && echo "daemon off;" >> /etc/nginx/nginx.conf \
    && rm /etc/nginx/sites-enabled/*

RUN openssl req -x509 -nodes -days 365 \
    -subj "/C=CA/ST=QC/O=Company, Inc./CN=salamane.42.fr" \
    -addext "subjectAltName=DNS:salamane.42.fr" \
    -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt

COPY ./conf/default /etc/nginx/sites-enabled/

EXPOSE 443
CMD ["nginx"]