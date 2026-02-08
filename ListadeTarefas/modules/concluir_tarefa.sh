concluir_tarefa() {
    listar_tarefas
    read -p "Digite o número da tarefa concluída: " num

    sed -i "${num}s/^\[ \]/[X]/" "$TASK_FILE"
    echo "Tarefa marcada como concluída!"
}
