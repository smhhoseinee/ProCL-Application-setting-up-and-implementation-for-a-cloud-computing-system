# syntax=docker/dockerfile:1

FROM node:18-alpine3.16
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 3001

CMD ["node", "ping_pong.js" ]
