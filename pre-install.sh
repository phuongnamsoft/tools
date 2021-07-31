#!/bin/bash

echo "Pre-Install: "
echo "Install curl wget"
yum install curl wget -y
echo "Install development tools"
yum groupinstall "development tools" -y

wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -O epel-release-latest-7.noarch.rpm
wget http://rpms.remirepo.net/enterprise/remi-release-7.rpm -O remi-release-7.rpm
rpm -Uvh remi-release-7.rpm epel-release-latest-7.noarch.rpm

yum install yum-utils -y
