#!/bin/bash

cp vestacp/templates/web/nginx/php-fpm/portainer.tpl /usr/local/vesta/data/templates/web/nginx/php-fpm/
cp vestacp/templates/web/nginx/php-fpm/portainer.tpl /usr/local/vesta/data/templates/web/nginx/php-fpm/

docker run -d -p 3040:9000 \
    --name portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    cr.portainer.io/portainer/portainer-ce:2.9.3