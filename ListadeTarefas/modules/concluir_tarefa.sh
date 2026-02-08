concluir_tarefa() {
    listar_tarefas
    read -p "Digite o número da tarefa concluída: " num

    sed -i "${num}s/^\[ \]/[X]/" data/tarefas.txt
    echo "Tarefa marcada como concluída!"
}
