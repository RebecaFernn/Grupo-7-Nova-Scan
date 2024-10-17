#!/bin/bash

sudo apt-get update -y && sudo apt-get upgrade -y

echo "Você está querendo utilizar os serviços da NovaScan?(s/n)" # print no terminal
    read get # variável que guarda resposta do usuário
    if [ "$get" = "s" ]; then # se a resposta for igual a s
        java --version # verifica a versão do Java
            if [ $? -eq 0 ]; then # se o retorno for igual a 0
                echo "Java instalado" # print no terminal
            else # se não,
                echo "Java não instalado" # print no terminal
                echo "Gostaria de instalar o Java? [s/n]" # print no terminal
                read get # variável que guarda resposta do usuário
                if [ "$get" = "s" ]; then # se a resposta for igual a s
                    sudo apt update # atualiza a lista de pacotes
                    sudo apt install default-jdk -y # executa a instalação do Java
                    echo "Java instalado com sucesso!" # print no terminal
                fi # fecha o 2º if
            fi # fecha o 1º if
        python3 --version # verifica a versão do Python
            if [ $? -eq 0 ]; then # se o retorno for igual a 0
                echo "Python instalado" # print no terminal
            else # se não,
                echo "Python não instalado" # print no terminal
                echo "Gostaria de instalar o Python? [s/n]" # print no terminal
                read get # variável que guarda resposta do usuário
                if [ "$get" = "s" ]; then # se a resposta for igual a s
                    sudo apt update # atualiza a lista de pacotes
                    sudo apt install python3 -y # executa a instalação do Python
                    echo "Python instalado com sucesso!" # print no terminal
                fi # fecha o 2º if
            fi # fecha o 1º if

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
        pip install py_cpuinfo
        echo "------------------------------------------"
        deactivate
    else
        echo "Você deve ser da equipe NovaScan..."
        echo "Insira a chave de acesso:" # print no terminal
        read get # variável que guarda resposta do usuário
        if [ "$get" = "1234" ]; then # se a resposta for igual a s
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
        fi # fecha o 2º if
    fi # fecha o 2º if