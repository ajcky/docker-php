#!/bin/sh

sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories

apk add --no-cache autoconf g++ libtool make curl-dev libxml2-dev linux-headers

#echo "---------- Install mcrypt ----------"
#apk add --no-cache libmcrypt-dev
#docker-php-ext-install mcrypt

echo "---------- Install pdo_mysql ----------"
docker-php-ext-install -j 2 pdo_mysql

echo "---------- Install zip ----------"
docker-php-ext-install -j 2 zip

echo "---------- Install pcntl ----------"
docker-php-ext-install -j 2 pcntl


echo "---------- Install mysqli ----------"
docker-php-ext-install -j 2 mysqli


