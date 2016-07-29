FROM zachdeibert/gradle-docker-image

MAINTAINER Zach Deibert<zachdeibert@gmail.com>

ENTRYPOINT ["/launch.sh"]
CMD [":0"]

RUN apt-get update && apt-get install -y libcanberra-gtk-module unzip lib32z1 lib32ncurses5 lib32stdc++6 && rm -rf /var/lib/apt/lists/*
ADD https://dl.google.com/dl/android/studio/ide-zips/2.1.2.0/android-studio-ide-143.2915827-linux.zip /tmp/android-studio-ide-143.2915827-linux.zip
RUN unzip /tmp/android-studio-ide-143.2915827-linux.zip -d /opt && rm -f /tmp/android-studio-ide-143.2915827-linux.zip
ADD launch.sh /launch.sh
