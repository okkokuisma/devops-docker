FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY 1_8_script .

RUN apt-get update && apt-get --assume-yes install curl

CMD ./1_8_script