#!/bin/bash

# Названия файлов для стандартного вывода и ошибок
OUTPUT_FILE="/root/read/output.log"
ERROR_FILE="/root/read/errors.log"

# Чистка предыдущих содержаний файлов
> "$OUTPUT_FILE"
> "$ERROR_FILE"

# Катаем все файлы в директории /etc, перенаправляя стандартный вывод и ошибки отдельно
cat /etc/* > "$OUTPUT_FILE" 2>"$ERROR_FILE"

# Получение количества ошибок
NUM_ERRORS=$(grep -c '^' "$ERROR_FILE")

# Печать результатов
echo "Объекты, которые не удалось прочитать: $NUM_ERRORS"

exit 0

