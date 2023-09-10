#!/bin/bash

generate_password() {
  local length="$1"
  tr -dc 'A-Za-z0-9' </dev/urandom | head -c "$length"
  echo
}

while true; do
  read -p "Por favor, insira o tamanho da senha desejada: " password_length

  if [[ "$password_length" =~ ^[0-9]+$ && "$password_length" -gt 0 ]]; then
    break
  else
    echo "Tamanho de senha inválido. Digite um número inteiro positivo."
  fi
done

senha_gerada=$(generate_password "$password_length")
echo "Senha gerada: $senha_gerada"
