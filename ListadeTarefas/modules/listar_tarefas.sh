listar_tarefas() {
    if [[ ! -s data/tarefas.txt ]]; then
        echo "Nenhuma tarefa cadastrada."
        return
    fi

    echo "===== Lista de Tarefas ====="
    nl -w2 -s". " "$TASK_FILE"
}
