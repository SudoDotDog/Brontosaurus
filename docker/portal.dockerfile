FROM mhart/alpine-node:12

# Workdir
WORKDIR /app

EXPOSE 8080

ARG release_version
ENV RELEASE_VERSION ${release_version}

ENV NODE_ENV production

COPY module/server/package.json .
COPY module/server/yarn.lock .

RUN yarn install --production=true

COPY module/server/dist ./dist
COPY module/server/public ./public

CMD [ "node", "dist/index.js" ]
