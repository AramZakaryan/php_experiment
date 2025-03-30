# Use official PHP image with Apache
FROM php:8.2-apache

# Enable Apache rewrite module (if using pretty URLs)
RUN a2enmod rewrite

# Copy project files into container
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Optional: install dependencies via composer if you use it
# COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
# RUN composer install

# Optional: expose port (Render uses 10000 internally, but Apache listens on 80)
EXPOSE 80
