#!/bin/bash

#fix codeigniter 3

sed -i "s#/index.php;#/index.php?\$args;#g" /usr/local/vesta/data/templates/web/nginx/php-fpm/codeigniter3.stpl
sed -i "s#/index.php;#/index.php?\$args;#g" /usr/local/vesta/data/templates/web/nginx/php-fpm/codeigniter3.tpl

#fix codeigniter 2

sed -i "s#/index.php;#/index.php?\$args;#g" /usr/local/vesta/data/templates/web/nginx/php-fpm/codeigniter2.stpl
sed -i "s#/index.php;#/index.php?\$args;#g" /usr/local/vesta/data/templates/web/nginx/php-fpm/codeigniter2.tpl
