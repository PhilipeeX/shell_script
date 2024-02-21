#!/usr/bin/zsh

log_file="example_log.log"
attempts_limit=5

attempts=$(grep -i "Failed Password" "$log_file" | wc -l)

if [ "$attempts" -ge "$attempts_limit" ];then
  echo "Possível ataque de força bruta detectado"
else
    echo "Não foram encontrados possíveis ataques de força bruta neste arquivo de log"
fi