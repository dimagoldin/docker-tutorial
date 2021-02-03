FROM node:14.15-alpine

RUN mkdir /app

COPY package.json package.json

RUN npm install --only=prod

COPY . .

RUN npm install

ENTRYPOINT [ "node", "index.js" ]
