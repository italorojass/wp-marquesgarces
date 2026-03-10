FROM wordpress:php8.1-apache

RUN a2dismod mpm_event && \
    a2enmod mpm_prefork && \
    a2enmod rewrite

EXPOSE 80