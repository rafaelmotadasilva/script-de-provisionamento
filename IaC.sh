#!/bin/bash
####################################
#
# Infraestrutura como Código - Script de Provisionamento de um Servidor Web (Apache).
#
####################################

# Atualizando o servidor
echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

# Baixando e copiando os arquivos da aplicação
echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

# Fim
echo "Fim..."
