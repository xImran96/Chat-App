FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN npm install -g npm@8.1.1

EXPOSE 8080

CMD npm start