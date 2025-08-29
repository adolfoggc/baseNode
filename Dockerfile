FROM node:22-alpine

RUN corepack enable yarn

# add git
RUN apk add git
RUN apk add openssh-keygen
RUN apk add openssh-client
COPY --exclude=node_modules --exclude=.next . /app

EXPOSE 8080