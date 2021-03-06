FROM mhart/alpine-node:12

# Workdir
WORKDIR /app

EXPOSE 9000

ARG release_version
ENV RELEASE_VERSION ${release_version}

ENV NODE_ENV production

COPY module/mint/package.json .
COPY module/mint/yarn.lock .

RUN yarn install --production=true

COPY module/mint/dist ./dist
COPY module/mint/public ./public

CMD [ "node", "dist/index.js" ]
