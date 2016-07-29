FROM node

MAINTAINER Zach Deibert<zachdeibert@gmail.com>

ENV PATH $PATH:/usr/lib/node_modules/bin
RUN npm install -g typescript typings
RUN typings install dt~node --global
RUN mkdir -p /srv/typescript

WORKDIR /srv/typescript
VOLUME /srv/typescript
CMD tsc -p . --watch --sourceMap
