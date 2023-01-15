FROM debian:buster

RUN apt update \
    && apt install vsftpd ftp -y
RUN useradd -m ftpuser && echo "ftpuser:ftpassword" | chpasswd \
    && echo ftpuser >> /etc/vsftpd.userlist && mkdir home/ftpuser/empty \
    && chown -R ftpuser:ftpuser /home/ftpuser

COPY conf/vsftpd.conf /etc/vsftpd.conf

EXPOSE 21

CMD [ "/usr/sbin/vsftpd" ]