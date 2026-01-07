FROM php:8.2-fpm

# System deps
RUN apt-get update && apt-get install -y \
    git curl unzip libpng-dev libonig-dev libzip-dev \
    && docker-php-ext-install pdo_mysql mbstring zip exif pcntl \
    && rm -rf /var/lib/apt/lists/*

# Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

# (opsional) supaya permission aman (terutama di Linux host)
RUN usermod -u 1000 www-data || true
