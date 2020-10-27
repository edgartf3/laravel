FROM php:7.3.6-fpm-alpine3.9

WORKDIR /var/www
RUN rm -rf /var/www/html
COPY . /var/www
RUN ln -s public html

EXPOSE 9000
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
ENTRYPOINT [ "php-fpm" ]

