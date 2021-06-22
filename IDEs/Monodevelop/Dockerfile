FROM mono

LABEL org.opencontainers.image.authors="zachdeibert@gmail.com"

ENTRYPOINT ["/launch.sh"]
CMD [":0"]

RUN apt-get update && apt-get install -y monodevelop monodevelop-nunit gsettings-desktop-schemas && rm -rf /var/lib/apt/lists/*
ADD launch.sh /launch.sh
