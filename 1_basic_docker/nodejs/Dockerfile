FROM node:14.15
# FROM node:14.15-alpine

RUN mkdir /app

# Copy all local code into the docker
COPY . .

RUN npm install

ENTRYPOINT [ "node", "index.js" ]
