#!/bin/bash
# excluir_tarefa.sh

excluir_tarefa() {
  echo "Tarefas atuais:"
  cat tarefas.txt
  echo
  read -rp "Digite o número da tarefa que deseja excluir: " id

  if ! [[ "$id" =~ ^[0-100000]+$ ]]; then
    echo "Número inválido. Por favor, digite um número válido."
    return
  fi

  if ! [ -f tarefas.txt ]; then
    echo "Arquivo de tarefas não encontrado."
    return
  fi

  if [ "$id" -le 0 ] || [ "$id" -gt "$(wc -l < tarefas.txt)" ]; then
    echo "Número fora do intervalo. Por favor, digite um número válido."
    return
  fi

  sed -i "${id}d" tarefas.txt
  echo "Tarefa excluída com sucesso."
}