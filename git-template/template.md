# Issues & Pull requests templates

## Содержание

1.  [Описание](#info)
1.  [Требование](#require)
1.  [Установка](#install)
1.  [Использование](#use)
    1.  [Issues](#issue)
        1.  [Создание](#issue-create)
        1.  [Открытие с помощью консоли](#issue-open)
    1.  [Pull request](#pr)
        1.  [Создание PR через терминал:](#pr-create)
        1.  [Открытие с помощью консоли](#pr-open)
        1.  [Закрытие PR через терминал](#pr-close)
        1.  [Быстрое открытие и закрытие PR](#pr-quick)

## <a name="info"></a> Описание

[Git Templates](https://help.github.com/articles/about-issue-and-pull-request-templates/) - шаблоны для создания Issues и Pull Request

## <a name="require"></a> Требования

* [Hub](https://github.com/github/hub)

## <a name="install"></a> Установка в существующий проект

1.  Установить [Hub](https://github.com/github/hub)
2.  Открыть `~/.gitconfig` любым текстовым редактором (nano, notepad, code, vim и т.д.)
3.  Скопировать код ниже и добавить в `~/.gitconfig`

```sh
[alias]
  ; git pr develop
  ; develop = argument specifying the base of the created PR (merging with)
  ; Ex. You are on a branch (feature/dec-2020)
  ; You want to create a PR with a base of develop from feature/dec-2020
  ; This function feature/dec-2020 will get the branch name itself
  ; 1. Push local branch to origin
  ; 2. Create PR with a $1 base branch, ex. git pr develop
  pr="!f() { \
      BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD); \
      REMOTE_ALIAS=$(git remote show); \
      git push -u $REMOTE_ALIAS $BRANCH_NAME; \
      hub pull-request -b $1 -F ./.github/PULL_REQUEST_TEMPLATE/git-pr.md; \
  };f "

  ; git pr-close develop
  ; develop = argument specifying the base of the created PR (merging with)
  ; Ex. You are on a branch (feature/dec-2020)
  ; You have an opened PR that you want to close
  ; Following will close the PR, merge branches, push changes
  ; and remove local and remote branches from which PR is created
  pr-close="!f() { \
      BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD); \
      REMOTE_ALIAS=$(git remote show); \
      git push; \
      git checkout $1; \
      git merge $BRANCH_NAME; \
      git push; \
      git push $REMOTE_ALIAS --delete $BRANCH_NAME; \
      git branch -d $BRANCH_NAME; \
  };f "

  ; git pr-quick develop
  ; develop = argument specifying the base of the created PR (merging with)
  ; $ git pr develop && git pr-close
  pr-quick="!f() { \
    git pr $1; \
    git pr-close $1; \
  };f "
  co = checkout
    ; opens in browser webpage of the PR
    ; @param {number} $1 - pull request number
  open-pr="!f() { \
    hub browse -- pull/$1; \
  };f "
  ; opens in browser webpage of the Issue
  ; @param {number} $1 - pull request number
  open-issue="!f() { \
    hub browse -- issues/$1; \
  };f "
```

4.  Скопировать папку `.github` из [репозитория](https://github.com/OlzhasAlexandrov/alexandrov-web-docs/tree/github_template/.github) и добавить в корневую папку своего проекта
5.  Запушить папку `.github` в репозиторий своего проекта

## <a name="use"></a> Использование

### Issues<a name="issue"></a>

#### Создание<a name="issue-create"></a>

1.  Откройте репозиторий проекта
2.  Во вкладке `Issues`, нажмите на кнопку `New issue`
3.  Вам предоставляется выбор шаблонов:
    3.1 **Bug issue** - служит для описания найденной ошибки
    3.2 **Feature issue** - используется для:
    * Описания текущих задач проекта
    * Предложение о добавлении нового функционала в проект
4.  Заполните шаблон и при необходимости правую боковую панель
5.  Подтвердите действия нажатием на кнопку `Submit new issue`

#### Открытие с помощью консоли<a name="issue-open"></a>

1.  Команда `git open-issue номер_тикета` откроет issue репозитория в браузере

### Pull request<a name="pr"></a>

#### Создание PR через терминал:<a name="pr-create"></a>

1.  Откройте свой проект
2.  Cоздайте новую ветку
3.  Добавьте коммит
4.  Команда `git pr название_base_branch` (Пример: `git pr develop`)
5.  В консоли появится ссылка на ваш pull request, при нажатии на которую он откроется в браузере
6.  Отредактируйте шаблон и при необходимости заполните правую боковую панель
7.  Подтвердите действия нажатием на кнопку `Update comment`

#### Открытие с помощью консоли<a name="pr-open"></a>

1.  Команда `git open-pr номер_тикета` откроет PR репозитория в браузере

#### Закрытие PR через терминал<a name="pr-close"></a>

1.  Команда `git pr-close название_base_branch` (Пример: `git pr-close develop`)

#### Быстрое открытие и закрытие PR<a name="pr-quick"></a>

1.  Команда `git pr-quick название_base_branch` (Пример: `git pr-quick develop`)
