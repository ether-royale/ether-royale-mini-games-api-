FROM node:16.14.2

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --only=production

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]