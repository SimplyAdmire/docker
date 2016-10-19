FROM node:6.2-slim

MAINTAINER Rens Admiraal <rens@simplyadmire.com>

RUN apt-get update;
RUN apt-get install -y git --no-install-recommends;
RUN apt-get install -y ruby --no-install-recommends;

RUN apt-get install -y python
RUN apt-get install -y build-essential

RUN npm install -g bower && \
    npm install -g gulp-cli

RUN npm install -g yarn

RUN gem install bundler
RUN gem install scss_lint

RUN apt-get autoremove -y && \
    apt-get clean && \
    apt-get autoclean && \
    echo -n > /var/lib/apt/extended_states && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/man/?? && \
    rm -rf /usr/share/man/??_*

CMD ["-"]
