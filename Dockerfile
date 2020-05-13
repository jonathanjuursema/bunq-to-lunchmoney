FROM trafex/alpine-nginx-php7:latest

# Install composer from the official image
COPY --from=composer /usr/bin/composer /usr/bin/composer

COPY . /var/www/html

# Run composer install to install the dependencies
RUN composer install --optimize-autoloader --no-interaction --no-progress
