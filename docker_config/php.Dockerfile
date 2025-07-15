FROM php:8.2-apache

# Update system packages to address vulnerabilities
RUN apt-get update && apt-get upgrade -y && apt-get clean

# Enable Apache mod_rewrite (optional, often useful in PHP apps)
RUN a2enmod rewrite

# Install common PHP extensions you might need (optional)
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Set working directory
WORKDIR /var/www/html

# Copy project files (optional, if you want to bake source in image)
# COPY . /var/www/html

# Expose port 80 (default for Apache)
EXPOSE 80
