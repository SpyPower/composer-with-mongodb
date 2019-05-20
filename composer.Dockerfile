FROM composer

RUN apk update && apk add autoconf openssl-dev g++ make && \
   pecl install mongodb && \
   docker-php-ext-enable mongo && \
   apk del --purge autoconf openssl-dev g++ make