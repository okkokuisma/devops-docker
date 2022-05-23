FROM ubuntu:18.04

WORKDIR /go/src/app

COPY . .

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:5000
ENV PATH "$PATH:/usr/local/go/bin"

RUN apt-get update && \
    apt-get -y install wget && \
    wget https://go.dev/dl/go1.18.2.linux-amd64.tar.gz && \
    rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz && \
    go build && \
    useradd -m appuser && \
    apt-get purge -y --auto-remove wget && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf go1.18.2.linux-amd64.tar.gz

USER appuser

CMD ./server