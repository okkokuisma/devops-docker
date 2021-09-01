FROM ubuntu:18.04

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

RUN apt-get update
RUN apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get -y install nodejs
RUN npm install
RUN npm install -g serve
RUN REACT_APP_BACKEND_URL=http://localhost:8080/ npm run build

CMD ["serve", "-s", "-l", "5000", "build"]