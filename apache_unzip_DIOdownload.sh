#!/bin/bash

echo "atualizando o servidor"


apt-get update
apt-get upgrade -y

echo "descarregando apps"


apt-get install apache2 -y
apt-get install unzip -y

echo "descarregando arquivo da DIO"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R /var/www/html/

