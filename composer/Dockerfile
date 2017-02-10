FROM alpine:3.5

MAINTAINER Rens Admiraal <rens@simplyadmire.com>

RUN apk add --no-cache bash curl git openssh
RUN apk add --no-cache php7 php7-json php7-openssl php7-phar php7-mbstring php7-zlib

RUN ln -sf /usr/bin/php7 /usr/bin/php

RUN curl -o /tmp/composer-setup.php https://getcomposer.org/installer \
        && curl -o /tmp/composer-setup.sig https://composer.github.io/installer.sig \
        && php7 -r "if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) !== trim(file_get_contents('/tmp/composer-setup.sig'))) { unlink('/tmp/composer-setup.php'); echo 'Invalid installer' . PHP_EOL; exit(1); }" \
        && php /tmp/composer-setup.php --no-ansi --install-dir=/usr/bin --version=1.3.2 --filename=composer --snapshot && rm -rf /tmp/composer-setup.php

RUN echo "memory_limit=-1" >> /etc/php7/php.ini

COPY entrypoint.sh /root/entrypoint.sh

ENV COMPOSER_ALLOW_SUPERUSER 1

ENTRYPOINT ["/root/entrypoint.sh"]

WORKDIR "/app"
