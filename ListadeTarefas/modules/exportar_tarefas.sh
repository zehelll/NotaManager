exportar_tarefas() {
    read -rp "Nome do arquivo para exportação: " arquivo
    cp "$TASK_FILE" "$arquivo"
    echo "Tarefas exportadas para $arquivo"
}
