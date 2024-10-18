#!/bin/bash

sudo apt-get update -y && sudo apt-get upgrade -y

echo "Você está querendo utilizar os serviços da NovaScan?(s/n)" 
    read get 
    if [ "$get" = "s" ]; then 
        java --version 
            if [ $? -eq 0 ]; then 
                echo "Java instalado" 
            else 
                echo "Java não instalado" 
                echo "Gostaria de instalar o Java? [s/n]" 
                read get 
                if [ "$get" = "s" ]; then 
                    sudo apt update 
                    sudo apt install default-jdk -y 
                    echo "Java instalado com sucesso!" 
                fi 
            fi 
        python3 --version 
            if [ $? -eq 0 ]; then 
                echo "Python instalado" 
            else 
                echo "Python não instalado" 
                echo "Gostaria de instalar o Python? [s/n]" 
                read get 
                if [ "$get" = "s" ]; then 
                    sudo apt update 
                    sudo apt install python3 -y 
                    echo "Python instalado com sucesso!" 
                fi 
            fi 

        # clonando o repositório
        echo "clonando o repositório da equipe..."
        git clone https://github.com/LucasCanuto4874/ScriptPythonCapturas.git
        echo "------------------------------------------"

        cd ScriptPythonCapturas/

        echo "Configurando o ambiente do Python..."
        sudo apt install python3 python3-venv -y
        echo "------------------------------------------"

        # criando ambiente virtual
        echo "Criando o ambiente Python..."
        python3 -m venv nova_scan
        source nova_scan/bin/activate

        pip install -r modulos.txt
        echo "------------------------------------------"
        deactivate

        # clonando o repositório do kotlyn
        cd ..
        echo "clonando o 2º repositório da equipe..."
        git clone https://github.com/LucasCanuto4874/Captura-rede-Kotlin.git
        cd Captura-rede-Kotlin/
        cd captura-rede
        echo "------------------------------------------"
    else
        echo "Você deve ser da equipe NovaScan..."
        echo "Insira a chave de acesso:" 
        read get 
        if [ "$get" = "1234" ]; then 
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
            echo "clonando o repositório da equipe..."
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

            # crriando o container do node/site
            cd ..
            cd aplicacao/

            echo "iniciando a aplicação..."
            sudo docker build -t node . || { echo "Falha ao construir a imagem."; exit 1; }
            sudo docker run -d --name novascan --network rede-novascan -p 8080:8080 node
            echo "------------------------------------------"

            sudo docker exec -it novascan bash
        fi 
    fi 