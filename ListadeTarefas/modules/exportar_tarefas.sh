exportar_tarefas() {
    read -p "Nome do arquivo para exportação: " arquivo
    cp "$TASK_FILE" "$arquivo"
    echo "Tarefas exportadas para $arquivo"
}
