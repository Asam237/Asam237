FROM node:14-alpine as builder
WORKDIR /app
RUN chmod 777 /app

COPY . .

RUN yarn install
RUN yarn build

CMD ["node", "dev"]
