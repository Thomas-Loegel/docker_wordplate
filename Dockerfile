# PHP
FROM php:7.4-apache

# Modules apache
RUN a2enmod headers deflate expires rewrite
EXPOSE 80

# Composer
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer --version

# Paquets nécessaires à l'installation de WordPlate
RUN apt-get update
RUN apt-get install zip unzip -y
RUN docker-php-ext-install mysqli

WORKDIR /var/www/html

# WordPlate
# Ici "." est le dossier du projet, modifiable
# RUN composer create-project --prefer-dist wordplate/wordplate /var/www/html

# Pointage DocumentRoot sur public/
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Redémarrage de Apache pour tenir compte des modifications + modules installés
RUN service apache2 restart

# Alias bien pratique
RUN alias ll='ls -al'
