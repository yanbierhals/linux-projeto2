#!/bin/bash

echo "Atualizando servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando arquivos da aplicacão..."
cd /tmp
wget https://github.com/yanbierhals/clone-spotify-home-curso/archive/refs/heads/main.zip
unzip main.zip
cd clone-spotify-home-curso-main
cp -R * /var/www/html/