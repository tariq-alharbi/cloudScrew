#!/usr/bin/env bash
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum -y install yum-utils -y
yum-config-manager --disable 'remi-php*'
yum-config-manager --enable remi-php82
yum repolist
yum -y install php php-{cli,fpm,mysqlnd,zip,devel,gd,mbstring,curl,xml,pear,bcmath,json,opcache,redis,memcache} -y
sudo yum -y update -y
yum install php-cli php-zip wget unzip -y
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
HASH="$(wget -q -O - https://composer.github.io/installer.sig)"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer