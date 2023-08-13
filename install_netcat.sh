#!/bin/bash

# Verifica se o pacote "netcat" já está instalado
if command -v nc > /dev/null 2>&1; then
    echo "Netcat já está instalado."
else
    echo "Instalando o Netcat..."
    # Atualiza os repositórios do Termux
    pkg update -y
    # Instala o pacote "netcat"
    pkg install netcat -y
    # Verifica se a instalação foi bem-sucedida
    if command -v nc > /dev/null 2>&1; then
        echo "Netcat foi instalado com sucesso."
    else
        echo "Ocorreu um erro durante a instalação do Netcat."
        exit 1
    fi
fi
