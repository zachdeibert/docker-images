FROM debian

LABEL org.opencontainers.image.authors="zachdeibert@gmail.com"

RUN apt-get update && apt-get install -y sendemail libnet-ssleay-perl libio-socket-ssl-perl ca-certificates zip git && rm -rf /var/lib/apt/lists/*
