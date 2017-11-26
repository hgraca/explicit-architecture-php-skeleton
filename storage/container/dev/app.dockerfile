FROM hgraca/lib-name:app.prd.php_7_1

RUN apk --update add --no-cache --virtual .ext-deps autoconf g++ make zlib-dev curl && \
    rm -rf /var/cache/apk/* && \
    pecl clear-cache && \
    docker-php-ext-configure pcntl && \
    docker-php-ext-install pcntl && \
    docker-php-ext-configure bcmath && \
    docker-php-ext-install bcmath && \
    docker-php-ext-configure zip && \
    docker-php-ext-install zip && \
    pecl install xdebug && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer &&\
    apk del autoconf g++
