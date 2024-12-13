#!/bin/bash

# Удаляем предыдущий лог, если он существует
rm -f log

# Определяем файлы и имя исполняемого файла
CPP_FILES="print_array.cpp main.cpp insert_sort.cpp randArray.cpp"
EXE="main"

# Удаляем предыдущий исполняемый файл, если он существует
if [ -f "$EXE" ]; then
    rm "$EXE"
fi

# Компилируем C++ файлы
g++ -finput-charset=utf-8 -fexec-charset=windows-1251 $CPP_FILES -o $EXE

# Запускаем исполняемый файл
./$EXE
