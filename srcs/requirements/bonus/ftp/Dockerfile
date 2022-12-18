FROM debian:buster

RUN apt update \
    && apt install vsftpd ftp -y
RUN useradd -m ftpuser && echo "ftpuser:ftpassword" | chpasswd

COPY conf/vsftpd.conf /etc/vsftpd.conf

EXPOSE 22

CMD [ "/usr/sbin/vsftpd" ]