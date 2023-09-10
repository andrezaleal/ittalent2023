#!/bin/bash

for i in {1..10}; do
  diretorio="diretorio_$i"
  mkdir "$diretorio"
  echo "Diretório '$diretorio' criado com sucesso."
done
