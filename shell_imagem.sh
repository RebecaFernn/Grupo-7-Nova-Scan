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

echo "criando a rede..."
sudo docker network create rede-novascan
echo "------------------------------------------"

# clonando o repositório
echo "clonando o repositório da equipe para criação das imagens..."
git clone https://github.com/RebecaFernn/Grupo-7-Nova-Scan.git
echo "------------------------------------------"

cd Grupo-7-Nova-Scan/

# criando o container do banco de dados
cd banco_de_dados/

echo "configurando o mysql..."
sudo docker build -t banco_novascan .
sudo docker run -d --name bd-novascan --network rede-novascan -p 3306:3306 banco_novascan
echo "------------------------------------------"

sudo docker exec -it bd-novascan bash

# criando o container do node/site
cd ..
cd aplicacao/

echo "iniciando a aplicação..."
sudo docker build -t node . || { echo "Falha ao construir a imagem."; exit 1; }
sudo docker run -d --name novascan --network rede-novascan -p 8080:8080 node
echo "------------------------------------------"

sudo docker exec -it novascan bash

echo "------------------------------------------"

echo "Fazer o login no dockerHub..."

sudo docker login

echo "------------------------------------------"

echo "Agora suba as imagens desejadas individualmente..."
echo "------------------------------------------"
