FROM debian:12-slim

USER root

WORKDIR /app

RUN apt update && \
    apt upgrade -y && \
    apt install sudo -y && \
    sudo apt install build-essential -y && \
    sudo apt-get install manpages-dev -y

COPY ./src/main.c .

RUN gcc main.c -o executable

CMD [ "./executable" ]