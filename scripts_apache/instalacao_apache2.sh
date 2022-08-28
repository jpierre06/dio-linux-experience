#!/bin/bash

echo "Atualização pacotes do sistema"
apt-get update
apt-get upgrade -y


echo -e "\n"
echo "Instalação pacotes para implementar servidor web"
apt-get install apache2 -y
apt-get install uzip -y


echo -e "\n"
echo "Download e configuração site arquitetura"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html


echo -e "\n"
echo "Download e configuração site yoga"
cd /tmp
wget https://www.free-css.com/assets/files/free-css-templates/download/page282/yogasana.zip
unzip yogasana.zip

cd yogasana-html
mkdir /var/www/html/yogasana
cp -R * /var/www/html/yogasana


echo -e "\n"
echo "Download e configuração site serviços eletricos"
cd /tmp
wget https://www.free-css.com/assets/files/free-css-templates/download/page281/eoc.zip
unzip eoc.zip

cd eoc-html
mkdir /var/www/html/eoc
cp -R * /var/www/html/eoc


