#!/bin/bash

echo "Digite seu nome de usuário:"
read username

while true; do
    read message
    echo "[$username]: $message" | nc IP_DO_SERVIDOR 12345
    if [[ "$message" == "exit" ]]; then
        break
    fi
done
