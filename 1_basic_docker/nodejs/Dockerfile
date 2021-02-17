FROM node:14.15
# FROM node:14.15-alpine

WORKDIR /app

# Copy all local code into the docker
COPY . .

RUN npm install

ENTRYPOINT [ "node", "index.js" ]
