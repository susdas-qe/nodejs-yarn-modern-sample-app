#FROM docker.io/node:22
FROM quay.io/konflux-ci/yarn4-nodejs22-ubi9-minimal:latest

WORKDIR /app

COPY --chown=1001:1001 package.json ./
COPY --chown=1001:1001 yarn.lock ./

RUN yarn install

COPY app.js ./

EXPOSE 3000

CMD ["yarn", "start"]
