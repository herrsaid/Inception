FROM debian:buster

RUN apt update \
    && apt install vsftpd -y

ARG FTP_PASS
RUN useradd -m ftpuser && echo "ftpuser:${FTP_PASS}" | chpasswd \
    &&  mkdir home/ftpuser/empty \
    && chown -R ftpuser:ftpuser /home/ftpuser

COPY conf/vsftpd.conf /etc/vsftpd.conf

EXPOSE 21

CMD [ "/usr/sbin/vsftpd" ]