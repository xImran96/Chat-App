FROM node:17-alpine3.12

WORKDIR /app

ADD ./ ./app
COPY ./ ./app

CMD npm start