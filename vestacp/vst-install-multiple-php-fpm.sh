#!/bin/bash

yum install epel-release yum-utils -y
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
yum clean all
yum update -y

yum install -y php56-php-imap php56-php-process php56-php-pspell php56-php-xml php56-php-xmlrpc php56-php-pdo php56-php-ldap php56-php-pecl-zip php56-php-common php56-php php56-php-mcrypt php56-php-mysqlnd php56-php-gmp php56-php-mbstring php56-php-gd php56-php-tidy php56-php-pecl-memcache php56-php-fpm --enablerepo=remi

yum install -y php72-php-imap php72-php-process php72-php-pspell php72-php-xml php72-php-xmlrpc php72-php-pdo php72-php-ldap php72-php-pecl-zip php72-php-common php72-php php72-php-mcrypt php72-php-gmp php72-php-mysqlnd php72-php-mbstring php72-php-gd php72-php-tidy php72-php-pecl-memcache php72-php-fpm --enablerepo=remi

yum install -y php74-php-imap php74-php-process php74-php-pspell php74-php-xml php74-php-xmlrpc php74-php-pdo php74-php-ldap php74-php-pecl-zip php74-php-common php74-php php74-php-mcrypt php74-php-gmp php74-php-mysqlnd php74-php-mbstring php74-php-gd php74-php-tidy php74-php-pecl-memcache php74-php-fpm --enablerepo=remi
