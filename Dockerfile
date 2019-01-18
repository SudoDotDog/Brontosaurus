FROM sudoo/node:latest

# Workdir
RUN mkdir /app
WORKDIR /app

EXPOSE 8080

ENV NODE_ENV production

COPY module/server/package.json .
COPY module/server/yarn.lock .

RUN yarn install --production=false

COPY module/server/dist ./dist
COPY module/server/public ./public

CMD [ "echo", "123" ]
