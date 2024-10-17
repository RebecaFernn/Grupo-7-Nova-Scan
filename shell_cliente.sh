#!/bin/bash

sudo apt-get update -y && sudo apt-get upgrade -y

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
import py_cpuinfo
echo "------------------------------------------"
deactivate