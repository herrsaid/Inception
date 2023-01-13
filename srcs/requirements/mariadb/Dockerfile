FROM debian:buster

RUN apt update \
    && apt install mariadb-server -y 
COPY tools/ tools

ARG DB_USER DB_NAME DB_PASSWORD
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
RUN chmod +x tools/entrypoint.sh
RUN ./tools/entrypoint.sh
EXPOSE 3306
CMD [ "mysqld" ]