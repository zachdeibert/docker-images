FROM openjdk:8-jre-alpine

LABEL org.opencontainers.image.authors="zachdeibert@gmail.com"

ENTRYPOINT [ "docker-entrypoint.sh" ]
EXPOSE 25565
VOLUME /opt/minecraft
WORKDIR /opt/minecraft

RUN apk add --no-cache curl

COPY list /mc_list
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
