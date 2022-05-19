FROM golang:1.17

WORKDIR /go/src/app

COPY . .

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build
RUN useradd -m appuser

USER appuser

CMD ./server