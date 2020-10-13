FROM php:7-apache

COPY docker/000-default.conf /etc/apache2/sites-available/
COPY docker/start-apache /usr/local/bin
RUN a2enmod rewrite

COPY index.php /var/www/public/
RUN chown -R www-data:www-data /var/www

CMD ["start-apache"]
