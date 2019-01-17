FROM keymetrics/pm2:latest-alpine

# Workdir
RUN mkdir /app
WORKDIR /app

ENV NODE_ENV production

COPY module/server/package.json .
COPY module/server/yarn.lock .

RUN yarn install --production=false

CMD [ "echo", "123" ]
