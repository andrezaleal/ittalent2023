#!/bin/bash

diretorio="/var/log"
extensao=".log"
limite_dias=7

if [ ! -d "$diretorio" ]; then
  echo "O diretório '$diretorio' não existe."
  exit 1
fi

find "$diretorio" -name "*$extensao" -type f -mtime +$limite_dias -exec rm -f {} \;

echo "Arquivos .log com mais de 7 dias foram removidos com sucesso."
