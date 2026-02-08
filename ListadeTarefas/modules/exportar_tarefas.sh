exportar_tarefas() {
    read -p "Nome do arquivo para exportação: " arquivo
    cp data/tarefas.txt "$arquivo"
    echo "Tarefas exportadas para $arquivo"
}
