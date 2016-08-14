FROM falinux/loopback:latest

MAINTAINER David You <david6miji@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# network util
RUN apt-get install -y net-tools

# nsupdate install
RUN apt-get install -y dnsutils

# docker 
WORKDIR /tmp/
RUN	wget -qO- https://get.docker.com/ | sh

WORKDIR /work

CMD	bash

