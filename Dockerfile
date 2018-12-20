FROM nginx:alpine
RUN apk add --no-cache curl
RUN apk add nodejs-current

#WORKDIR /usr/src/app
WORKDIR /app
ADD  app.js /app
ADD  package.json  /app/package.json
EXPOSE 80
#CMD [ "node", "src/server.js" ]
CMD node app.js

