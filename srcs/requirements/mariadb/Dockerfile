FROM debian:buster

RUN apt update \
    && apt install mariadb-server -y 
COPY tools/ tools
COPY test.sql tools
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
RUN chmod +x tools/entrypoint.sh
RUN service  mysql start && mysql < tools/test.sql
EXPOSE 3306
CMD [ "mysqld" ]
#CMD ["./tools/entrypoint.sh"]