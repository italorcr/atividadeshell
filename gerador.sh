#!/bin/bash

# Função para gerar uma senha aleatória
gerar_senha() {
  comprimento=$1
  caracteres="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-+=<>?"
  senha=""
  
  for ((i = 0; i < comprimento; i++)); do
    # Gere um índice aleatório dentro do intervalo de caracteres
    indice=$((RANDOM % ${#caracteres}))
    senha="${senha}${caracteres:$indice:1}"
  done
  
  echo "$senha"
}

# Pergunte ao usuário o comprimento desejado da senha
echo "Digite o comprimento da senha desejada:"
read comprimento

# Verifique se o comprimento é válido
if [[ $comprimento -gt 0 ]]; then
  senha=$(gerar_senha $comprimento)
  echo "Sua senha gerada é: $senha"
else
  echo "O comprimento da senha deve ser maior que zero."
fi
