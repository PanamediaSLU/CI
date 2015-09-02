FROM ubuntu:15.04

MAINTAINER Antonio Manuel Hernández Sánchez

RUN echo "INSTALLING PHALCON"
RUN apt-get update
RUN apt-get install -y python-software-properties software-properties-common
RUN apt-add-repository -y ppa:phalcon/stable
RUN apt-get update
RUN apt-get install -y php5-phalcon php5-cli
