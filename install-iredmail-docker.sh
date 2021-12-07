#!/bin/bash

/bin/systemctl stop postfix.service

mkdir /iredmail

touch /iredmail/iredmail-docker.conf

echo HOSTNAME=$(hostname) >> /iredmail/iredmail-docker.conf
echo FIRST_MAIL_DOMAIN=$(hostname) >> /iredmail/iredmail-docker.conf
echo FIRST_MAIL_DOMAIN_ADMIN_PASSWORD=$(openssl rand -base64 12) >> /iredmail/iredmail-docker.conf
echo MLMMJADMIN_API_TOKEN=$(openssl rand -base64 32) >> /iredmail/iredmail-docker.conf
echo ROUNDCUBE_DES_KEY=$(openssl rand -base64 24) >> /iredmail/iredmail-docker.conf

mkdir -p /iredmail/data/{backup,clamav,custom,imapsieve_copy,mailboxes,mlmmj,mlmmj-archive,mysql,sa_rules,ssl,postfix_queue}

docker run \
    -d \
    --restart always \
    --name iredmail \
    --env-file /iredmail/iredmail-docker.conf \
    --hostname $(hostname) \
    -p 8080:80 \
    -p 8443:443 \
    -p 110:110 \
    -p 995:995 \
    -p 143:143 \
    -p 993:993 \
    -p 25:25 \
    -p 465:465 \
    -p 587:587 \
    -v /iredmail/data/backup:/var/vmail/backup \
    -v /iredmail/data/mailboxes:/var/vmail/vmail1 \
    -v /iredmail/data/mlmmj:/var/vmail/mlmmj \
    -v /iredmail/data/mlmmj-archive:/var/vmail/mlmmj-archive \
    -v /iredmail/data/imapsieve_copy:/var/vmail/imapsieve_copy \
    -v /iredmail/data/custom:/opt/iredmail/custom \
    -v /iredmail/data/ssl:/opt/iredmail/ssl \
    -v /iredmail/data/mysql:/var/lib/mysql \
    -v /iredmail/data/clamav:/var/lib/clamav \
    -v /iredmail/data/sa_rules:/var/lib/spamassassin \
    -v /iredmail/data/postfix_queue:/var/spool/postfix \
    iredmail/mariadb:stable

