FROM mhart/alpine-node:12

# Workdir
WORKDIR /app

EXPOSE 8500

ENV NODE_ENV production

COPY module/green/package.json .
COPY module/green/yarn.lock .

RUN yarn install --production=true

COPY module/green/dist ./dist

CMD [ "node", "dist/index.js" ]
