FROM php:8.1-apache

RUN a2enmod rewrite && \
    docker-php-ext-install mysqli pdo pdo_mysql

COPY wordpress/ /var/www/html/

RUN chown -R www-data:www-data /var/www/html/ && \
    chmod -R 755 /var/www/html/

EXPOSE 80