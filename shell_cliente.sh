#!/bin/bash

sudo apt-get update -y && sudo apt-get upgrade -y

# fazendo a verificação do que será necessário
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

# clonando o repositório do python
echo "clonando o 1º repositório da equipe..."
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

