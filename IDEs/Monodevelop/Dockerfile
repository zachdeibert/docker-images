FROM zachdeibert/mono-docker

MAINTAINER Zach Deibert<zachdeibert@gmail.com>

ENTRYPOINT ["/launch.sh"]
CMD [":0"]

RUN apt-get update && apt-get install -y monodevelop monodevelop-nunit && rm -rf /var/lib/apt/lists/*
ADD launch.sh /launch.sh
