FROM zachdeibert/autotools-docker

MAINTAINER Zach Deibert <zachdeibert@gmail.com>

ENTRYPOINT ["/launch.sh"]
CMD [":0"]

RUN apt-get update && apt-get install -y apt-transport-https && rm -rf /var/lib/apt/lists/*
RUN echo "deb https://apt.jenslody.de/stable jessie main" > /etc/apt/sources.list.d/codeblocks.list && echo "deb-src https://apt.jenslody.de/stable jessie main" >> /etc/apt/sources.list.d/codeblocks.list
RUN apt-get update && apt-get install -y --force-yes jens-lody-debian-keyring && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y codeblocks && rm -rf /var/lib/apt/lists/*
ADD launch.sh /launch.sh
