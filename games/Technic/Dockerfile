FROM java

MAINTAINER Zach Deibert<zachdeibert@gmail.com>

ENTRYPOINT ["/launch.sh"]
CMD [":0"]

ADD http://launcher.technicpack.net/launcher4/347/TechnicLauncher.jar /usr/local/bin/TechnicLauncher.jar
RUN chmod 755 /usr/local/bin/TechnicLauncher.jar
ADD launch.sh /launch.sh
