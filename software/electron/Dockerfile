FROM node:13.12.0-slim

LABEL org.opencontainers.image.authors="zachdeibert@gmail.com"

RUN apt-get update && apt-get install -y wine zip && rm -rf /var/lib/apt/cache/*
RUN npm install electron-packager electron -g --unsafe-perm=true --allow-root
RUN mkdir -p /tmp/dummy_package && ln -s /usr/local/lib/node_modules/ /tmp/dummy_package/node_modules
COPY package.json /tmp/dummy_package/package.json
RUN cd /tmp/dummy_package && electron-packager . --all && cd / && rm -rf /tmp/dummy_package
