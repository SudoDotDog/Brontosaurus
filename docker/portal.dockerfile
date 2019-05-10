FROM sudoo/node:latest

# Workdir
WORKDIR /app

EXPOSE 8080

ENV NODE_ENV development

COPY module/server/package.json .
COPY module/server/yarn.lock .

RUN yarn install --production=true

COPY module/server/dist ./dist
COPY module/server/public ./public

CMD [ "node", "dist/index.js" ]
