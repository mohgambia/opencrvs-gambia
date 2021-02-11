FROM node:dubnium-alpine
WORKDIR /usr/src/app

# Override the base log level (info).
ENV NPM_CONFIG_LOGLEVEL warn
ENV CHECK_INVALID_TOKEN true

WORKDIR /usr/src/app/src/gmb/mediators/ocrvs-chatbot
COPY src/gmb/mediators/ocrvs-chatbot/package.json package.json
COPY src/gmb/mediators/ocrvs-chatbot/yarn.lock yarn.lock
RUN yarn install

# Copy package source
COPY src/gmb/mediators/ocrvs-chatbot /usr/src/app/src/gmb/mediators/ocrvs-chatbot
RUN yarn build

EXPOSE 8050

# TODO wait for openhim api
CMD yarn start:prod
