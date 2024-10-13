#!/bin/bash

sudo apt-get update -y && sudo apt-get upgrade -y

docker --version # verifica versão atual do docker
if [ $? -eq 0 ]; then # se retorno for igual a 0
    echo "docker instalado" # print no terminal
else # se não,
    echo "docker não instalado" # print no terminal
    echo "gostaria de instalar o docker? [s/n]" # print no terminal
    read get # variável que guarda resposta do usuário
    if [ "$get" = "s" ]; then # se retorno for igual a s
        sudo apt install docker.io -y # executa instalação do docker
    fi # fecha o 2º if
fi # fecha o 1º if

echo "inicializando o docker..."

sudo systemctl start docker
sudo systemctl enable docker
echo "------------------------------------------"

echo "criando a rede..."
sudo docker network create rede-novascan
echo "------------------------------------------"

# criando o container do banco de dados
cd banco_de_dados/

echo "configurando o mysql..."
sudo docker build -t banco_novascan .
sudo docker run -d --name bd-novascan --network rede-novascan -p 3306:3306 banco_novascan
echo "------------------------------------------"

sudo docker exec -it bd-novascan bash

# crriando o container do node/site
cd ..
cd aplicacao/

echo "iniciando a aplicação..."
sudo docker build -t node . || { echo "Falha ao construir a imagem."; exit 1; }
sudo docker run -d --name novascan --network rede-novascan -p 8080:8080 node
echo "------------------------------------------"

sudo docker exec -it novascan bash
