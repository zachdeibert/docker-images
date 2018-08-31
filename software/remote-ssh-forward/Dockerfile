FROM debian

ENTRYPOINT [ "ssh", "-N", "-R" ]
VOLUME /home/ssh/.ssh

RUN apt update \
    && apt install -y \
        openssh-client \
    && rm -rf /var/lib/apt/lists/* \
    && useradd user

USER user
