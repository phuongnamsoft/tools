#!/bin/bash

yum install php-memcached php-memcache memcached -y

cp ./etc/memcached /etc/sysconfig/memcached

/bin/systemctl restart memcached.service
/bin/systemctl enable memcached.service
