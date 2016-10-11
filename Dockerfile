FROM mitcdh/caddy-php
MAINTAINER Mitchell Hewes <me@mitcdh.com>

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer