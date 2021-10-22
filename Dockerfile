FROM node:latest

WORKDIR /app

ADD . /app

COPY package*.json ./

RUN npm install -g npm@8.1.1

CMD node src/app.js