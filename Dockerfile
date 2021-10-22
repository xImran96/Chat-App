FROM node:alpine

WORKDIR /app

ADD ./ ./app

COPY ./ ./app

RUN npm install

CMD npm start