FROM golang:1.17-alpine

WORKDIR /go/src/app

COPY . .

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build && \
    adduser -D appuser

USER appuser

CMD ./server