#!/bin/bash

echo "[mariadb]" > '/etc/yum.repos.d/MariaDB.repo'
echo "name = MariaDB" >> '/etc/yum.repos.d/MariaDB.repo'
echo "baseurl = http://yum.mariadb.org/10.4/centos7-amd64" >> '/etc/yum.repos.d/MariaDB.repo'
echo "gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB" >> '/etc/yum.repos.d/MariaDB.repo'
echo "gpgcheck=1" >> '/etc/yum.repos.d/MariaDB.repo'
