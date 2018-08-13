FROM openjdk:8-jre-alpine

ENTRYPOINT [ "docker-entrypoint.sh" ]
EXPOSE 25565
VOLUME /opt/minecraft/world
WORKDIR /opt/minecraft

RUN apk add --no-cache curl

COPY list /opt/mc/list
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
