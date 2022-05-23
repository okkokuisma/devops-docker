FROM ubuntu:18.04

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

RUN apt-get update && \
    apt-get -y install curl && \
    curl -sL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get -y install nodejs && \
    npm install && \
    npm install -g serve && \
    REACT_APP_BACKEND_URL=http://localhost:8080/api/ npm run build && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m appuser

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]