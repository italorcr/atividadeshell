#!/bin/bash

# Função para realizar a operação de adição
adicao() {
  resultado=$(echo "$1 + $2" | bc)
  echo "Resultado da adição: $resultado"
}

# Função para realizar a operação de subtração
subtracao() {
  resultado=$(echo "$1 - $2" | bc)
  echo "Resultado da subtração: $resultado"
}

# Função para realizar a operação de multiplicação
multiplicacao() {
  resultado=$(echo "$1 * $2" | bc)
  echo "Resultado da multiplicação: $resultado"
}

# Função para realizar a operação de divisão
divisao() {
  if [ $2 -eq 0 ]; then
    echo "Erro: Divisão por zero não é permitida."
  else
    resultado=$(echo "scale=2; $1 / $2" | bc)
    echo "Resultado da divisão: $resultado"
  fi
}

# Menu principal
while true; do
  echo "Calculadora Simples"
  echo "Escolha uma operação:"
  echo "1. Adição"
  echo "2. Subtração"
  echo "3. Multiplicação"
  echo "4. Divisão"
  echo "5. Sair"

  read opcao

  case $opcao in
    1)
      echo "Digite o primeiro número:"
      read num1
      echo "Digite o segundo número:"
      read num2
      adicao $num1 $num2
      ;;
    2)
      echo "Digite o primeiro número:"
      read num1
      echo "Digite o segundo número:"
      read num2
      subtracao $num1 $num2
      ;;
    3)
      echo "Digite o primeiro número:"
      read num1
      echo "Digite o segundo número:"
      read num2
      multiplicacao $num1 $num2
      ;;
    4)
      echo "Digite o primeiro número:"
      read num1
      echo "Digite o segundo número:"
      read num2
      divisao $num1 $num2
      ;;
    5)
      echo "Saindo da calculadora."
      exit 0
      ;;
    *)
      echo "Opção inválida. Tente novamente."
      ;;
  esac
done
