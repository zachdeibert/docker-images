FROM debian:jessie

LABEL org.opencontainers.image.authors="zachdeibert@gmail.com"

RUN apt-get update && apt-get install -y build-essential autoconf automake libtool make gcc g++ && rm -rf /var/lib/apt/lists/*
