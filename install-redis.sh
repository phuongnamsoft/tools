#!/bin/bash

yum install php-redis redis -y

/bin/systemctl restart redis.service
/bin/systemctl enable redis.service