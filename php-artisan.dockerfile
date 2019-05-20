FROM php:7.3-fpm-alpine

# add silently...
RUN set -x &&   docker-php-ext-install mysqli pdo_mysql pdo_pgsql> /dev/null
WORKDIR /app
