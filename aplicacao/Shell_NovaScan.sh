#!/bin/bash

# Verifica se a construção da imagem foi bem-sucedida
sudo docker build -t node . || { echo "Falha ao construir a imagem."; exit 1; }
sudo docker run -d --name novascan --network rede-novascan -p 8080:8080 node

sudo docker exec -it novascan bash

echo "iniciando a aplicação..."