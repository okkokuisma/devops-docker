FROM ubuntu:latest

WORKDIR /usr/src/app

COPY juum.sh .

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git && \
    apt install docker.io -y

CMD ./juum.sh