FROM keymetrics/pm2:latest-alpine

# Workdir
RUN mkdir /app
WORKDIR /app

ENV NODE_ENV production

COPY module/server/package.json .
COPY module/server/yarn.lock .

RUN yarn install --production=false

COPY module/server/dist ./dist
COPY module/server/public ./public

CMD [ "echo", "123" ]
