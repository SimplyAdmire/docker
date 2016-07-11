FROM ubuntu:16.04

MAINTAINER Rens Admiraal <rens@simplyadmire.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install python-software-properties software-properties-common -y

RUN add-apt-repository ppa:nginx/stable && \
    apt-get -y install nginx-extras

RUN apt-get autoremove -y && \
    apt-get clean && \
    apt-get autoclean && \
    echo -n > /var/lib/apt/extended_states && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/man/?? && \
    rm -rf /usr/share/man/??_*

RUN chown -R www-data:www-data /var/lib/nginx

EXPOSE 80 443

CMD ["nginx"]
