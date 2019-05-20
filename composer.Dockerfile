# FROM composer

# RUN apk update && apk add autoconf openssl-dev g++ make && \
#    pecl install mongodb && \
#    docker-php-ext-enable mongo && \
#    apk del --purge autoconf openssl-dev g++ make

FROM php:7.3-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev \
   mysql-client libmagickwand-dev --no-install-recommends \
   && pecl install imagick \
   && docker-php-ext-enable imagick \
   && docker-php-ext-install mcrypt pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer