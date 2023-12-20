FROM node:alpine

WORKDIR /app

COPY ./package.json .

RUN npm install --only=prod

COPY . .

CMD [ "node", "index.js" ]