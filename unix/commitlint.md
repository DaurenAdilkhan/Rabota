# Fish shell

## Содержание

1. [Описание](#info)
2. [Установка](#install)
3. [Использование](#use)
3. [Если умник дофига, го сюда](#goTuda)

## <a name="info"></a> Описание

Commitlint (lint от слова linter <= транслейтор и википедия вам в помощь) это 
специальный анализатор ваших коммит сообщений. Он проверяет правильно ли 
вы пишете коммиты и приучает ваc писать в едином стиле, следуя определённым правилам. Онокак!

## <a name="install"></a> Установка

Используя пакетный менеджер npm тыцаем по клаве следующее:
```bash
npm install --save-dev @commitlint/{cli,config-conventional}
```

Затем нужно установить еще одну хрень:
```bash
npm install --save-dev husky
```
В оф. доке пишет, что: Husky can prevent bad git commit, git push and more 🐶 woof!  
Хуле тут непонятного!?

После этого редактируем наш package.json файл, а именно раздел scripts и добавляем туда следующее:
```js
{
  "scripts": {
    "commitmsg": "commitlint -E GIT_PARAMS"
  }
}
```

Теперь нам остаётся добавить файл с конфигурацией... Должна же быть какая то конфигурация, не? 
Создаём рядом с нашим package.json еще один файл с названием: commitlint.config.js
А в файле этом нужно прописать вот это вот всякое, напевая при этом под нос какую нибудь любимую мелодию:
```js
module.exports = {
  rules: {
    "body-leading-blank": [1, "always"],
    "footer-leading-blank": [1, "always"],
    "header-max-length": [2, "always", 72],
    "scope-case": [2, "always", "lower-case"],
    "subject-case": [
      2,
      "never",
      ["sentence-case", "start-case", "pascal-case", "upper-case"],
    ],
    "subject-empty": [2, "never"],
    "subject-full-stop": [2, "never", "."],
    "type-case": [2, "always", "upper-case"],
    "type-empty": [2, "never"],
    "type-enum": [
      2,
      "always",
      [
        "ADDED", // new features
        "CHANGED", // changes in existing functionality
        "DEPRECATED", // soon-to-be removed features
        "REMOVED", // removed features
        "FIXED", // any bug fixes
        "SECURITY", // in case of vulnerabilities
      ],
    ],
  },
}
```
Сохраняем это всё и можно пробовать его юзать... 

## <a name="use"></a> Использование

... пробуем его юзать:

```bash
git commit -m "foo: this will fail"

or (`ОР` в переводе с древнекитайского означает `ИЛИ`)

gc "foo: this will fail"
```

... и, как следует из сообщения, нифига у вас не закоммититься ибо нефиг! Нужно правильные коммиты писать!
В общем, следуйте за инструкциями которую этот linter вам выдаст. В общем, получите, распишитесь!

## <a name="goTuda"></a> Го туда

Собсна:
[Тыц](http://marionebl.github.io/commitlint/#/guides-local-setup)
и [еще раз тыц](https://github.com/marionebl/commitlint)