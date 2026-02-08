concluir_tarefa() {
    listar_tarefas
    read -rp "Digite o número da tarefa concluída: " id

    sed -i "${id}s/^\[ \]/[X]/" "$TASK_FILE"
    echo "Tarefa marcada como concluída!"
}
