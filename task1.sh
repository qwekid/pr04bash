red='\033[31m' 
echo -e "${red}  " 
# Переменная, в которую будет записан результат поиска
result=""

# Поиск исполняемых файлов Git
find_git_executables() {
    # Ищем исполняемый файл git в системе
    git_exec=$(command -v git)

    # Если git не найден, выводим сообщение об ошибке и выходим
    if [ ! -x "$git_exec" ]; then
        echo "Git executable not found or not executable"
        exit 1
    fi

    # Добавляем найденный исполняемый файл в результат поиска
    result+="$git_exec"
}

# Вызов функции поиска исполняемых файлов Git
find_git_executables

# Вывод результата поиска
echo "Git executables found:"
echo "$result"

