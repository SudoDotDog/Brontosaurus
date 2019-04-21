FROM sudoo/node:latest

# Workdir
RUN mkdir /app
WORKDIR /app

EXPOSE 9000

ENV NODE_ENV development

COPY module/mint/package.json .
COPY module/mint/yarn.lock .

RUN yarn install --production=true

COPY module/mint/dist ./dist
COPY module/mint/public ./public

CMD [ "node", "dist/index.js" ]
