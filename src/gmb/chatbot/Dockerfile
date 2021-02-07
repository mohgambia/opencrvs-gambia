FROM node:dubnium-alpine
WORKDIR /usr/src/app

# Override the base log level (info).
ENV NPM_CONFIG_LOGLEVEL warn
ENV CHECK_INVALID_TOKEN true

WORKDIR /usr/src/app/src/gmb/chatbot
COPY src/gmb/chatbot/package.json package.json
COPY src/gmb/chatbot/yarn.lock yarn.lock
RUN yarn install

# Copy package source
COPY src/gmb/chatbot /usr/src/app/src/gmb/chatbot
RUN yarn build

EXPOSE 8060

# TODO wait for openhim api
CMD yarn start:prod
