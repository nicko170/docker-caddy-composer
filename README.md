# Docker Caddy Server + PHP-FPM + Composer

Installs php-fpm and composer with a config intended to be invoked from a Caddyfile `startup` command.

Takes a base Caddyfile from `/scripts/Caddyfile` and appends additional directives from command arguments to `/www/Caddyfile`

### Usage
#### Customising Caddyfile and Bind Mounting webroot
````bash
docker run -v /mnt/Caddyfile:/Scripts/Caddyfile -v /mnt/www:/www mitcdh/caddy-composer "prometheus" "realip {" "from 10.42.0.0/16" "from 172.17.0.0/16" "}"
````

#### Example Caddyfile
````
fastcgi / 127.0.0.1:9000 php
startup php-fpm
startup composer install --prefer-source --no-interaction
````


### Structure
* `/www`: default web root
* `/scripts/Caddyfile`: Base Caddyfile

### Exposed Ports
* `2015`: default caddy web server port

### Credits
* [abiosoft](https://github.com/abiosoft) for [caddy-docker](https://github.com/abiosoft/caddy-docker) which the caddy curl was based on.