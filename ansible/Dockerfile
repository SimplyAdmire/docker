FROM williamyeh/ansible:alpine3

MAINTAINER Rens Admiraal <rens@simplyadmire.com>

RUN apk update && apk upgrade

RUN apk add git
RUN apk add openssh-client
RUN apk add docker
RUN apk add rsync

RUN rm -rf /var/cache/apk/*
