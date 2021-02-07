FROM node:14.15-alpine AS base

WORKDIR /app
COPY package.json .

# ---- Dependencies ----
FROM base AS dependencies

RUN npm install --only=production
# copy production node_modules aside
RUN cp -R node_modules prod_node_modules 

RUN npm install

# ---- Test ----
FROM dependencies AS test
COPY . .
RUN npm run test

# ---- Release ----
FROM base AS release
# copy production node_modules
COPY --from=dependencies --chown=node:node /app/prod_node_modules ./node_modules
# copy app sources
COPY --chown=node:node . .

ENTRYPOINT [ "node", "index.js" ]
