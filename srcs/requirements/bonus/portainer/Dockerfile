FROM debian:buster

RUN apt update \
    && apt install wget -y \
    && wget https://github.com/portainer/portainer/releases/download/2.16.2/portainer-2.16.2-linux-amd64.tar.gz \
    && tar -xvzf portainer-2.16.2-linux-amd64.tar.gz

CMD [ "./portainer/portainer" ]