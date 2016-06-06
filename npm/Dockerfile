FROM node:4.4-slim

MAINTAINER Rens Admiraal <rens@simplyadmire.com>

RUN apt-get update && apt-get;
RUN apt-get install -y git --no-install-recommends;
RUN apt-get install -y ruby --no-install-recommends;

RUN apt-get autoremove -y && \
    apt-get clean && \
    apt-get autoclean && \
    echo -n > /var/lib/apt/extended_states && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/man/?? && \
    rm -rf /usr/share/man/??_*

RUN npm install -g bower && \
    npm install -g gulp-cli

RUN gem install bundler
RUN gem install scss_lint

CMD ["-"]
