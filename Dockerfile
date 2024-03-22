FROM richarvey/nginx-php-fpm

COPY . .

# Image config
ENV SKIP_COMPOSER 1
ENV WEBROOT /var/www/html/public
ENV PHP_ERRORS_STDERR 1
ENV RUN_SCRIPTS 1
ENV REAL_IP_HEADER 1

# Laravel config
ENV APP_ENV production
ENV APP_DEBUG false
ENV LOG_CHANNEL stderr
ENV APP_KEY base64:TYXlLYGvBa4vzovRatw9KU98wRpCnVLE/8h1JGVJXjU=
ENV DB_CONNECTION pgsql
ENV DATABASE_URL postgres://laravel_postgresql_9l2m_user:laJd4NOMFHbFL58kRjlJGlXgtJ0vemky@dpg-cnuoi0v109ks7396rbt0-a/laravel_postgresql_9l2m
ENV APP_DEBUG true
ENV APP_TIMEZONE UTC
ENV APP_URL https://api-e16q.onrender.com

ENV APP_LOCALE en
ENV APP_FALLBACK_LOCALE en
ENV APP_FAKER_LOCALE en_US

ENV APP_MAINTENANCE_DRIVER file
ENV APP_MAINTENANCE_STORE database

ENV BCRYPT_ROUNDS 12

# Allow composer to run as root
ENV COMPOSER_ALLOW_SUPERUSER 1

CMD ["/start.sh"]