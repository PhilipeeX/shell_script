#!/usr/bin/zsh

host="127.0.0.1"
portas=("80" "22" "443")

for porta in "${portas[@]}"; do
        nc -zv "$host" "$porta" > /dev/null 2>&1
        if [ $? -eq 0 ]; then
                echo "porta $porta esta aberta em $host"
        else
                echo "porta $porta está fechada em $host"
        fi
done
