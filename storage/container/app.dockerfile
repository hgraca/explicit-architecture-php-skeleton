# This file is used to automatically build the container used in docker-compose.yml
# For more details check https://hub.docker.com/r/werkspot/message-queue/builds/
FROM php:7.1-alpine

RUN apk --update add --no-cache --virtual .ext-deps autoconf g++ make zlib-dev curl && \
    pecl install xdebug && \
    pecl clear-cache && \
    docker-php-ext-configure pcntl && \
    docker-php-ext-configure bcmath && \
    docker-php-ext-install pcntl && \
    docker-php-ext-install bcmath && \
    docker-php-ext-configure zip && \
    docker-php-ext-install zip && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
