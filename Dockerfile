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
ENV DB_CONNECTION pgsql
ENV APP_KEY base64:TYXlLYGvBa4vzovRatw9KU98wRpCnVLE/8h1JGVJXjU=
ENV DATABASE_URL postgres://laravel_postgresql_9l2m_user:laJd4NOMFHbFL58kRjlJGlXgtJ0vemky@dpg-cnuoi0v109ks7396rbt0-a/laravel_postgresql_9l2m

# Allow composer to run as root
ENV COMPOSER_ALLOW_SUPERUSER 1

CMD ["/start.sh"]