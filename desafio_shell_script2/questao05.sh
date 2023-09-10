#!/bin/bash

adicao() {
  resultado=$(echo "$1 + $2" | bc)
  echo "Resultado da adição: $resultado"
}

subtracao() {
  resultado=$(echo "$1 - $2" | bc)
  echo "Resultado da subtração: $resultado"
}

multiplicacao() {
  resultado=$(echo "$1 * $2" | bc)
  echo "Resultado da multiplicação: $resultado"
}

divisao() {
  resultado=$(echo "scale=2; $1 / $2" | bc)
  if [[ $resultado == .* ]]; then
    resultado="0$resultado"
  fi
  echo "Resultado da divisão: $resultado"
}

while true; do
  echo "Calculadora"
  echo "Selecione a operação:"
  echo "1. Adição"
  echo "2. Subtração"
  echo "3. Multiplicação"
  echo "4. Divisão"

  read escolha

  case $escolha in
  1 | 2 | 3 | 4)
    echo "Digite o primeiro número:"
    read num1
    echo "Digite o segundo número:"
    read num2

    if [ "$escolha" -eq 4 ] && [ "$(echo "$num2 == 0" | bc)" -eq 1 ]; then
      echo "Erro: Divisão por zero."
    else
      case $escolha in
      1)
        adicao "$num1" "$num2"
        exit 0
        ;;
      2)
        subtracao "$num1" "$num2"
        exit 0
        ;;
      3)
        multiplicacao "$num1" "$num2"
        exit 0
        ;;
      4)
        divisao "$num1" "$num2"
        exit 0
        ;;
      esac
    fi
    ;;
  *)
    echo "Opção inválida. Tente novamente."
    ;;
  esac
done
