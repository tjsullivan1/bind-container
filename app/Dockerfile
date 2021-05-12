FROM node:8.9.3-alpine
RUN mkdir -p /usr/src/app
COPY ./sample_app/ /usr/src/app/
WORKDIR /usr/src/app
RUN npm install
CMD node /usr/src/app/index.js