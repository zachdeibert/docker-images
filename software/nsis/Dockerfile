FROM monokrome/wine

RUN apt-get update && apt-get install -y nsis unzip make && rm -rf /var/lib/apt/lists/*

ADD http://nsis.sourceforge.net/mediawiki/images/c/c9/Inetc.zip /tmp/Inetc.zip
ADD http://nsis.sourceforge.net/mediawiki/images/9/9d/Untgz.zip /tmp/Untgz.zip
ADD http://nsis.sourceforge.net/mediawiki/images/8/88/NsUnzip.zip /tmp/NsUnzip.zip

RUN unzip /tmp/Inetc.zip -d /tmp/Inetc/
RUN unzip /tmp/Untgz.zip -d /tmp/
RUN unzip /tmp/NsUnzip.zip -d /tmp/NsUnzip/

RUN cp /tmp/Inetc/Plugins/x86-ansi/INetC.dll /usr/share/nsis/Plugins/
RUN cp /tmp/untgz/untgz.dll /usr/share/nsis/Plugins/
RUN cp /tmp/NsUnzip/nsUnzip.dll /usr/share/nsis/Plugins/

RUN rm -rf /tmp/{Inetc,Untgz,NsUnzip}{,.zip}
