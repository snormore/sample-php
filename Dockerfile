FROM php:7-apache

COPY 000-default.conf /etc/apache2/sites-available/
COPY start-apache /usr/local/bin
COPY php-overrides.ini /usr/local/etc/php/conf.d/
RUN a2enmod rewrite

COPY index.php /var/www/public/
RUN chown -R www-data:www-data /var/www

CMD ["start-apache"]
