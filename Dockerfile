FROM node:alpine

WORKDIR /usr/src/app

ADD ./ ./usr/src/app

COPY package*.json ./usr/src/app

RUN npm install

CMD npm start