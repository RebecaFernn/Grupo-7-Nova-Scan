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

sudo docker build -t banco_novascan .
sudo docker run -d --name bd-novascan -p 3306:3306 banco_novascan

sudo docker exec -it bd-novascan bash