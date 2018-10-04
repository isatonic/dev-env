FROM php:7.2.10-fpm-alpine
RUN apk add --no-cache \
        zip \
        libpng \
        libpng-dev \
        libjpeg \
        icu \
        icu-dev \
        libxml2 \
        libxml2-dev \
        openssl \
        openssl-dev
RUN docker-php-ext-install \
        pdo_mysql \
        mysqli \
        mbstring \
        gd \
        intl \
        xml \
        opcache \
        zip
COPY php.ini /usr/local/etc/php/
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

