FROM nick170/caddy-php
MAINTAINER Nick Pratley <nick@npratley.net>

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require fxp/composer-asset-plugin
