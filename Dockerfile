FROM node:22-alpine

RUN corepack enable yarn

# add git
RUN apk add git
RUN apk add openssh-keygen
RUN apk add openssh-client
RUN mkdir /app

EXPOSE 8080