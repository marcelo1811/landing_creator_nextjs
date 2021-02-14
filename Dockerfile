FROM node:15.8.0-alpine3.10

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY ["package.json", "package-lock.json*", "./"]
RUN npm install

COPY . .
