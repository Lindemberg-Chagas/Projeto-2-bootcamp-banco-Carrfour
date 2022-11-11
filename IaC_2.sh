#!/bin/bash

echo "Atualizando sistema...!"

apt-get update
apt-get upgrade -y

echo "Instalar o Apache2"

apt-get install apache2 -y

echo "Instalar o unzip"

apt-get install unzip

cd /tmp

echo "baixano e copiando os Arquivos para a pasta Apache"
 
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

unzip main.zip

cd linux-site-dio-main

cp -R -f * /var/wwww/html/

