#!/bin/bash

rm -rf /usr/local/vesta/ioncube/ioncube.sh

yum downgrade vesta-0.9.8-26 vesta-php-0.9.8-26 vesta-nginx-0.9.8-26 vesta-ioncube-0.9.8-26 -y

bash vestacp/vst-crack.sh

service vesta restart

bash vestacp/vst-crack.sh
