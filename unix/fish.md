# Fish shell

## Содержание

1. [Описание](#info)
1. [Установка](#install)
1. [Запуск fish](#start)
1. [Добавление кастомных alias](#alias)
1. [Установка кастомных тем](#themes)
1. [Мелкие фиксы](#fixes)

## <a name="info"></a> Описание

[Fish shell](https://github.com/fish-shell/fish-shell) - относительно новая командная оболочка для Unix-подобных операционных систем. К её отличительным качествам можно отнести подсветку синтаксиса и продвинутое автодополнение.

## <a name="install"></a> Установка

### Для пользователей Linux

Открываете терминал и пишите

```bash
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish
```

### Для пользователей Mac OSX

Cледуете по этой [инструкции](https://github.com/ellerbrock/fish-shell-setup-osx)

## <a name="start"></a> Запуск fish

В терминале пропишите

```bash
fish
```

## <a name="alias"></a> Добавление кастомных alias

Создаете файл `config.fish` в `~/.config/fish/`

```unix
nano ~/.config/fish/config.fish
```

Вместо `nano` можно использовать другой текстовый редактор к примеру `vim`, `xed`, и т.д.

Пропишите в `config.fish`

```bash
source ~/.fish_aliases
```

Создайте файл `.fish_aliases`

```bash
nano ~/.fish_aliases
```

В нем пишите свои `alias`, к примеру мои `alias`

```bash
alias .. 'cd ..'
alias nr 'npm run'
alias yr 'yarn run'
alias ga 'git add .'
alias gs 'git status'
alias gc 'git commit -m'
alias gcc 'git clone'
alias gp 'git push'
alias gpp 'git pull'
alias gop 'cd ~/projects/'
alias yh 'yarn dev --host 0.0.0.0'
alias gffs 'git flow feature start'
alias gffp 'git flow feature publish'
alias mobile 'sudo sysctl net.ipv4.ip_default_ttl=65'
```

## <a name="themes"></a> Установка кастомных тем

Для начало вам нужно установить [Oh My Fish](https://github.com/oh-my-fish/oh-my-fish)

```bash
curl -L https://get.oh-my.fish > install
fish install --path=~/.local/share/omf --config=~/.config/omf
```

Выберете тему которая вам понравился. [Ссылка на темы](https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md)

К примеру для установки [cyan themes](https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md#cyan)

Пишите в `fish`

```bash
omf install cyan
```

## <a name="fixes"></a> Мелкие фиксы
Если после темы Вы видите в начале '[I]', и она вас раздражает, то пишите следующее в `fish`
```fish
fish_default_key_bindings 
```


