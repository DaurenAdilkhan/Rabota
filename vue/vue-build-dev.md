# Установка

## Локальная

1. Клонировать данный [репозиторий](https://github.com/OlzhasAlexandrov/vue-build-dev/invitations)
    - В любую дерикторию, например `~/projects/utils/vue-build-dev/`
2. Перейти в клонированный проект `vue-build-dev`
3. Установить зависимости
    - `npm i --no-optional`
4. Перейти в проект, где будет использоваться `vue-build-dev`
5. Удалить `node_modules` и `package-lock.json`
    - если `vue-build-dev` использовался ранее, удалите его из devDependencies в `package.json`
6. Установить локальный `vue-build-dev`
    - `npm i --no-optional ~/projects/utils/vue-build-dev/`
