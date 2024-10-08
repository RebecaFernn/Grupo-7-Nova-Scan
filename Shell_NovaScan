#!/bin/bash

sudo apt-get update -y && apt-get upgrade -y

docker --version #verifica versao atual do docker
if [ $? = 0 ]; #se retorno for igual a 0
    then #entao,
    echo “docker instalado” #print no terminal
    else #se nao,
    echo “docker não instalado” #print no terminal
    echo “gostaria de instalar o docker? [s/n]” #print no terminal
    read get #variável que guarda resposta do usuário
    if [ \“$get\” == \“s\” ]; #se retorno for igual a s
        then #entao
        sudo apt install docker.io -y #executa instalacao do docker
    fi #fecha o 2º if
fi #fecha o 1º if

curl --silent -L https://github.com/docker/buildx/releases/download/v0.12.0/buildx-v0.12.0.linux-amd64 -o buildx-v0.12.0.linux-amd64
chmod a+x buildx-v0.12.0.linux-amd64

chmod +x ~/.docker/cli-plugins/
mv buildx-v0.12.0.linux-amd64 ~/.docker/cli-plugins/
cd ~/.docker/cli-plugins/
apt install docker-buildx

cd
cd Grupo-7-Nova-Scan

echo "inicializando o docker..."

sudo systemctl start docker
sudo systemctl enable docker

sudo docker build -t node .
sudo docker run -d --name novascan_web -p 8080:8080 node

sudo docker exec -it novascan_web bash

sudo apt-get update && apt-get install nano

echo "iniciando a aplicação..."