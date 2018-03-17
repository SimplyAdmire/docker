FROM alpine

MAINTAINER Rens Admiraal <rens@simplyadmire.com>

RUN apk add --no-cache  bash git openssh docker rsync vim sudo \
                        python py-pip openssl ca-certificates && \
    apk add --no-cache --virtual build-dependencies \
                        python-dev libffi-dev openssl-dev build-base && \
    pip install --upgrade pip cffi && pip install ansible && \
    apk del build-dependencies

RUN mkdir -p /etc/ansible && echo 'localhost' > /etc/ansible/hosts

RUN rm -rf /var/cache/apk/*

COPY entrypoint.sh /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]
