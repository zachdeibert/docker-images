FROM zachdeibert/gradle-docker-image

MAINTAINER Zach Deibert<zachdeibert@gmail.com>

ENTRYPOINT ["/launch.sh"]
CMD [":0"]

RUN apt-get update && apt-get install -y libcanberra-gtk-module && rm -rf /var/lib/apt/lists/*
ADD http://eclipse.mirror.rafal.ca/technology/epp/downloads/release/neon/R/eclipse-java-neon-R-linux-gtk-x86_64.tar.gz /tmp/eclipse-java-neon-R-linux-gtk-x86_64.tar.gz
RUN tar -xzf /tmp/eclipse-java-neon-R-linux-gtk-x86_64.tar.gz -C /opt && rm -f /tmp/eclipse-java-neon-R-linux-gtk-x86_64.tar.gz
ADD launch.sh /launch.sh
