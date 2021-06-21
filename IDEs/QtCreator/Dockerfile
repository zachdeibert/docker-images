FROM zachdeibert/autotools-docker

MAINTAINER Zach Deibert<zachdeibert@gmail.com>

ENTRYPOINT ["/launch.sh"]
CMD [":0"]

RUN apt-get update && apt-get install -y qt-sdk qtcreator nvidia-304-dev && rm -rf /var/lib/apt/lists/*
ADD launch.sh /launch.sh
