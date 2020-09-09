FROM parrotsec/core:rolling
MAINTAINER BRAVO68WEB (bravo68web@dfcommunity.win)
ENV DEBIAN_FRONTEND noninteractive
ENV VERSION 4.8-1
WORKDIR /app

# Install components
RUN apt-get update; apt-get -y dist-upgrade;apt-get -y install parrot-pico;apt-get -y install parrot-mini parrot-tools-cloud; rm -rf /var/lib/apt/lists/*

RUN cat ../etc/apt/sources.list.d/parrot.list
ENTRYPOINT bash $@
