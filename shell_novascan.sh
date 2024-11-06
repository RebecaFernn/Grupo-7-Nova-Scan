#!/bin/bash

sudo apt-get update -y && sudo apt-get upgrade -y

# configurando o docker
docker --version 
if [ $? -eq 0 ]; then 
    echo "docker instalado" 
else 
    echo "docker não instalado" 
    echo "gostaria de instalar o docker? [s/n]" 
    read get 
    if [ "$get" = "s" ]; then 
        sudo apt install docker.io -y 
    fi 
fi 

echo "inicializando o docker..."

sudo systemctl start docker
sudo systemctl enable docker
echo "------------------------------------------"

echo "baixando pacotes do docker compose..."

sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
echo "------------------------------------------"
 
 echo "Iniciando o docker-compose..."

 sudo sudo docker-compose up -d

 echo "------------------------------------------"

 echo "Verificando se os containers estão rodando..."

 sudo docker ps
 
  echo "------------------------------------------"