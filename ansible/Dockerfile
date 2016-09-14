FROM williamyeh/ansible:debian8

MAINTAINER Rens Admiraal <rens@simplyadmire.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install python-software-properties software-properties-common -y

RUN apt-get install -y apt-transport-https ca-certificates

RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

RUN add-apt-repository "deb https://apt.dockerproject.org/repo debian-jessie main"

RUN apt-get update

RUN apt-get install -y git
RUN apt-get install -y openssh-client
RUN apt-get install -y docker-engine
RUN apt-get install -y rsync
RUN apt-get install -y vim

RUN apt-get autoremove -y && \
    apt-get clean && \
    apt-get autoclean && \
    echo -n > /var/lib/apt/extended_states && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/man/?? && \
    rm -rf /usr/share/man/??_*
