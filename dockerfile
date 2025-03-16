# Use an official PHP image with Apache
FROM php:8.2-apache

# Install MySQL extension
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy application files
COPY . /var/www/html

# Expose port
EXPOSE 80
