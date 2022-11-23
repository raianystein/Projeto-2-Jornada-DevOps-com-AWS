#! /bin/bash
# Script para a criação de um servidor web com apache

echo "Atualizando o sistema..."
apt-get update -y
apt-get upgrade -y

echo "Instalando o apache e o unzip..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando a aplicação e descompactando..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
rm main.zip

echo "Copiando a aplicação para o diretório padrão do apache..."
cp -R /tmp/linux-site-dio-main/* /var/www/html

echo "Processo finalizado"
