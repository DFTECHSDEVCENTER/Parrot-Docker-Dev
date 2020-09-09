FROM parrotsec/core:rolling

MAINTAINER BRAVO68WEB (bravo68web@dfcommunity.win)
ENV DEBIAN_FRONTEND noninteractive
ENV VERSION 4.8-1

WORKDIR /app

RUN rm -rf ../etc/apt/sources.list.d/parrot.list
COPY etc/apt/sources.list.d/parrot.list ../etc/apt/sources.list.d/parrot.list
# Install components
RUN apt-get update
RUN apt-get -y dist-upgrade

RUN apt-get -y install parrot-pico
RUN apt-get -y install parrot-mini parrot-tools-cloud
RUN rm -rf /var/lib/apt/lists/*

# RUN cat ../etc/apt/sources.list.d/parrot.list

ENTRYPOINT bash $@
