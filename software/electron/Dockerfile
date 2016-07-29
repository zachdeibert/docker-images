FROM node:6.3.0-slim

MAINTAINER Zach Deibert<zachdeibert@gmail.com>

RUN apt-get update && apt-get install -y zip xz-utils && rm -rf /var/lib/apt/cache/*
RUN npm install electron-packager electron electron-prebuilt -g
RUN mkdir -p /tmp/dummy_package && ln -s /usr/local/lib/node_modules/ /tmp/dummy_package/node_modules
COPY package.json /tmp/dummy_package/package.json
RUN cd /tmp/dummy_package && electron-packager . --all && cd / && rm -rf /tmp/dummy_package
