FROM node:17-alpine3.12

WORKDIR /app

ADD ./ ./app

EXPOSE 3500

CMD npm start