FROM node:14.15
# FROM node:14.15-alpine

RUN mkdir /app

COPY . .

RUN npm install

ENTRYPOINT [ "node", "index.js" ]

