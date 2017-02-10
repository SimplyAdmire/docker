FROM alpine:3.5

MAINTAINER Rens Admiraal <rens@simplyadmire.com>

RUN apk add --no-cache bash curl git openssh
RUN apk add --no-cache nodejs

RUN curl -o- -L https://yarnpkg.com/install.sh | HOME=/usr/local/ bash

COPY entrypoint.sh /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]

WORKDIR "/app"
