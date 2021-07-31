#!/bin/bash

bash pre-install.sh
bash install-mariadb-repo.sh

yum-config-manager --enable remi-php73

echo "Install VestaCP: "

curl -O http://vestacp.com/pub/vst-install.sh
bash vst-install.sh --nginx yes --phpfpm yes --apache no --named no --remi no --vsftpd yes --proftpd no --iptables no --fail2ban no --quota no --exim no --dovecot no --spamassassin no --clamav no --softaculous no --mysql yes --postgresql no

bash vestacp/vst-crack.sh

echo "Install Opcache, imagick:"
yum install php-opcache php-imagick -y

/bin/systemctl restart nginx.service
/bin/systemctl enable nginx.service

/bin/systemctl restart php-fpm.service
/bin/systemctl enable php-fpm.service

/bin/systemctl restart mysql.service
/bin/systemctl enable mysql.service

