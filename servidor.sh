#!/bin/bash

mkfifo server_pipe

trap "rm server_pipe" EXIT

declare -A clients

while true; do
    cat server_pipe | nc -l -p 12345 | tee -a chat.log | (while read msg; do
        if [[ "$msg" == "exit" ]]; then
            break
        elif [[ "$msg" =~ ^\[.*\]\:.+ ]]; then
            client="${msg%%]*}"
            client="${client:1}"
            echo "${clients[$client]}: ${msg#*]: }"
        else
            echo "Cliente: $msg"
            client="Anônimo"
        fi
        echo "$msg" | (for c in ${!clients[@]}; do
            if [[ "$c" != "$client" ]]; then
                echo "[$client]: $msg" > ${clients[$c]}
            fi
        done)
    done > server_pipe ) &
    client_socket=$!
    read name
    if [[ "${clients[$name]}" == "" ]]; then
        echo "Bem-vindo, $name!"
        clients[$name]="client_$client_socket"
    else
        echo "Nome de usuário já está em uso. Saindo..."
        echo "exit" > server_pipe
    fi
    wait $client_socket
    unset clients[$name]
done
