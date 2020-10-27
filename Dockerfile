FROM php:7.3.6-fpm-alpine3.9

EXPOSE 9000

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ENTRYPOINT [ "php-fpm" ]

