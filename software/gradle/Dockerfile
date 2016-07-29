FROM java
MAINTAINER Zach Deibert <zachdeibert@gmail.com>
ADD https://services.gradle.org/distributions/gradle-2.13-bin.zip /tmp/gradle-2.13-bin.zip
RUN unzip /tmp/gradle-2.13-bin.zip -d /tmp && cp -R /tmp/gradle-2.13/* /usr/local/ && rm -Rf /tmp/gradle-2.13 /tmp/gradle-2.13-bin.zip
