#!/bin/bash

/bin/systemctl stop postfix.service

mkdir /mailserver

docker run \
    -p 25:25 \
    -p 8080:80 \
    -p 8443:443 \
    -p 110:110 \
    -p 143:143 \
    -p 587:587 \
    -p 993:993 \
    -p 995:995 \
    -v /etc/localtime:/etc/localtime:ro \
    -v /mailserver:/data \
    --hostname $(hostname) \
    --name "mailserver" \
    --restart always \
    -t analogic/poste.io