# Поиск и удаление node_modules  
Bash функции для поиска и удаления директорий node_modules, которые были изменены больше чем неделю назад

## Добавление
1. Добавить функции `find-old-node-modules ()` и `clean-old-node-modules ()` в файл `~/.bashrc` 

``` sh
# List what WILL be deleted by "clean-old-node-modules"
find-old-node-modules () {
  find $1 \
    -path */node_modules -prune -mtime +7 -o \
    -name node_modules -type d -mtime +7;
}
# @param {string} $1 - path to where to search
#   exclude subdirs of node_modules, older than 7 days, -o (OR)
#   search for "node_modules" directories, modified more than 7 days, delete them
clean-old-node-modules () {
  find $1 \
    -path */node_modules -prune -mtime +7 -exec rm -rf {} + -o \
    -name node_modules -type d -mtime +7 -exec rm -rf {} +
}
```

## Команды 

| Команда | Описание |
|---|---|
|`find-old-node-modules ~/projects`| Поиск директорий node_modules в `~/projects`, которые не изменялись более 7 дней |
|`clean-old-node-modules ~/projects`| Поиск и удаление директорий node_modules в `~/projects`, которые не изменялись более 7 дней. Нежелательно удалять node_modules из корневой директории |
