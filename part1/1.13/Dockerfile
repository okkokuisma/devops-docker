FROM golang:1.17

WORKDIR /go/src/app

COPY . .

EXPOSE 8080

RUN go build

CMD ./server