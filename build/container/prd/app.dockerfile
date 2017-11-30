FROM php:7.1-alpine

RUN apk --update add --no-cache --virtual .ext-deps autoconf g++ make zlib-dev curl && \
    mkdir -p /tmp/pear/cache && \
    pecl clear-cache && \
    docker-php-ext-configure pcntl && \
    docker-php-ext-install pcntl && \
    docker-php-ext-configure bcmath && \
    docker-php-ext-install bcmath && \
    docker-php-ext-configure zip && \
    docker-php-ext-install zip && \
    rm -rf /var/cache/apk/*

COPY . /opt/app
