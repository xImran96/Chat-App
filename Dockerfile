FROM node:17-alpine3.12

WORKDIR /app

ADD ./app .

RUN npm install

EXPOSE 3500

CMD npm start