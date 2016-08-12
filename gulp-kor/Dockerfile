FROM node:4.4.7

MAINTAINER David You <david6miji@gmail.com> 

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

# set locale ko_KR

RUN apt-get install -y locales
RUN dpkg-reconfigure locales 
RUN locale-gen C.UTF-8 
RUN /usr/sbin/update-locale LANG=C.UTF-8
	
# Install needed default locale for Makefly
RUN echo 'ko_KR.UTF-8 UTF-8' | tee --append /etc/locale.gen
RUN locale-gen

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG ko_KR.UTF-8
ENV LANGUAGE ko_KR.UTF-8

RUN apt-get update
RUN apt-get install sudo -y
RUN apt-get install vim -y

# Gulp 4.0 Install
RUN npm install gulpjs/gulp-cli -g
RUN npm install gulp-load-plugins -g
RUN npm install pty -g
RUN npm install gulp-shell -g
RUN npm install require-dir -g 

CMD	bash

