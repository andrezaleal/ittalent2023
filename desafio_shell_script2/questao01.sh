#!/bin/bash

echo "Digite o nome do arquivo de texto:"
read arquivo

if [ ! -f "$arquivo" ]; then
    echo "O arquivo $arquivo não existe."
    exit 1
fi

contagem_de_palavras=$(wc -w <"$arquivo")
echo "O arquivo $arquivo contém $contagem_de_palavras palavras."
