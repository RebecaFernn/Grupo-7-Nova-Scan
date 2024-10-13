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

# Verifica se a construção da imagem foi bem-sucedida
sudo docker build -t node . || { echo "Falha ao construir a imagem."; exit 1; }
sudo docker run -d --name novascan --network rede_novascan -p 8080:8080 node

sudo docker exec -it novascan bash

sudo apt-get update && sudo apt-get install nano

echo "iniciando a aplicação..."