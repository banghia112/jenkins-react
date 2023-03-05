FROM node:16-alpine

WORKDIR /app

COPY . .

RUN rm -rf package-lock.json && rm -rf yarn.lock && yarn

ENTRYPOINT ["yarn", "start"]