FROM node:16.15.0-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080/api/

RUN npm install && \
    npm install -g serve && \
    npm run build && \
    adduser -D appuser

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]