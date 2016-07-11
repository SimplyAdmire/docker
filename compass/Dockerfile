FROM ruby:2.2

MAINTAINER Rens Admiraal <rens@simplyadmire.com>

RUN apt-get update && apt-get install -y \
  build-essential \
  ruby-dev

RUN gem install bundler
RUN gem install compass

RUN apt-get autoremove -y && \
    apt-get clean && \
    apt-get autoclean && \
    echo -n > /var/lib/apt/extended_states && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/man/?? && \
    rm -rf /usr/share/man/??_*

COPY ./compile.sh /

CMD ["-"]
ENTRYPOINT ["/compile.sh"]
