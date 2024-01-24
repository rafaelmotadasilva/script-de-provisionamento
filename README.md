<h1>
    <a href="https://www.dio.me/">
     <img align="center" width="40px" src="https://hermes.digitalinnovation.one/assets/diome/logo-minimized.png"></a>
    <span> Infraestrutura como Código - Script de Provisionamento de um Servidor Web (Apache)</span>
</h1>

Repositório desenvolvido para fins educativos.

## Objetivo
Criar um script onde será provisionado um servidor web automaticamente.

## O Shell script 

Este é um exemplo simples de shell script, no entanto, há muitas opções que podem ser incluídas nesse arquivo de script.

```
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
```
## Executando o script

### Execute a partir de um terminal

A maneira mais simples de usar o script acima é copiar e colar o conteúdo em um arquivo (chamado `IaC.sh` por exemplo). O arquivo deve ser tornado executável:

```
chmod u+x IaC.sh
```
Em seguida, em um terminal, execute o seguinte comando:

```
sudo ./IaC.sh
```
Essa é uma ótima maneira de testar o script para garantir que tudo funcione conforme o esperado. Sendo assim, toda nova máquina virtual que for iniciada já estará pronta para uso quando o script for executado.