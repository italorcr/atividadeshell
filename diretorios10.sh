#!/bin/bash

# Loop para criar 10 diretórios
for i in {1..10}; do
  # Nome do diretório
  diretorio="diretorio$i"

  # Verifica se o diretório já existe
  if [ ! -d "$diretorio" ]; then
    # Cria o diretório
    mkdir "$diretorio"
    echo "Diretório $diretorio criado com sucesso."
  else
    echo "O diretório $diretorio já existe."
  fi
done
