# Vim
Example: my config file: [.vimrc](https://github.com/OlzhasAlexandrov/cheatsheets/blob/master/text-editors/.vimrc)

## 1. General operations
### 1.1. Reindent 2 spaces with 4 spaces
- Create tab characters out of 2 spaces
`:set ts=2 sts=2 noet`
`:retab!`
- Set tab characters as 4 spaces, then reindent
`:set ts=4 sts=4 et`
`retab`
- Create a key mapping for the above **four** commands

`nmap <F12> :set ts=2 sts=2 noet \| :retab! \| :set ts=4 sts=4 et \| retab<CR>`

### 1.2. Find and replace, [article](http://vim.wikia.com/wiki/Search_and_replace)

| Command | Description |
| -------- | ----------- |
| `:%s/stringToReplace/finalValue/g` | every occurence of **stringToReplace** will be replaced by **finalValue** <br> add `c` at the end for confirmation, making it `gc` |

### 1.3. Save a file with sudo permissions
`:w !sudo tee %`

### 1.4. Go back in time
`:earlier 60m`
