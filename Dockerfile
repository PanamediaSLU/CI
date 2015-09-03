FROM ubuntu:15.04

MAINTAINER Antonio Manuel Hernández Sánchez

RUN echo "INSTALLING PHP & PHALCON"; \
apt-get update && apt-get install -y python-software-properties software-properties-common ; \
apt-add-repository -y ppa:phalcon/stable; \
apt-get update && apt-get install -y php5-phalcon php5-cli php5-redis php5-intl php5-xdebug php5-mysql php5-curl

RUN echo "INSTALLING COMPOSER";apt-get install -y curl; \
curl -sS https://getcomposer.org/installer | php;mv composer.phar /usr/local/bin/composer

RUN echo "INSTALLING MYSQL"
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y mysql-server

RUN echo "INSTALLING REDIS"
RUN apt-get install -y redis-server
