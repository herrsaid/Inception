FROM debian:buster

RUN apt update && apt install redis-server -y

CMD ["redis-server", "--protected-mode", "no"]