FROM node:carbon-alpine

WORKDIR /app

COPY server.js /app/server.js
COPY package.json /app/package.json

RUN yarn install --production


CMD node server.js
USER root
