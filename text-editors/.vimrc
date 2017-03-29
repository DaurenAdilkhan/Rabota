" VUNDLE================================================================
set nocompatible              " be iMproved, required
filetype off                  " required

"	set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'posva/vim-vue'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-repeat'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-haml'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdcommenter'
Plugin 'matchit.zip'
Plugin 'digitaltoad/vim-jade'
Plugin 'pangloss/vim-javascript'
Plugin 'bling/vim-airline'

Plugin 'gko/vim-coloresque'
Plugin 'flazz/vim-colorschemes'
Plugin 'NLKNguyen/papercolor-theme'
call vundle#end()            " required
"	To ignore plugin indent changes, instead use:
"	filetype plugin on
"
"	Brief help
"	:PluginList       - lists configured plugins
"	:PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"	:PluginSearch foo - searches for foo; append `!` to refresh local cache
"	:PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
"	ADDED THE FOLLOWING ================================================
filetype plugin indent on    " required

set encoding=utf-8

set laststatus=2
set timeoutlen=500
set ttimeoutlen=0

set history=100

" NO BACKUP FILES
set nobackup

" Ctrl + P
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Air-line ===========================================================
" Show Tabline
let g:airline#extensions#tabline#enabled = 1

" Show Buffers
let g:airline#extensions#tabline#show_buffers = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" NERDtree
map <C-e> :NERDTreeToggle<CR>
" set autoread

"  Reindent file
nmap <F12> :set ts=2 sts=2 noet \| :retab! \| :set ts=4 sts=4 et \| retab<CR>

" EASY MOTION ============================================================
let mapleader = ","
let g:mapleader = ","
autocmd BufNewFile,BufRead *.vue set filetype=javascript
autocmd BufWritePre * %s/\s\+$//e

" SYNTAX ==================================================================
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic guibg=white guifg=white ctermbg=white
set nu
set cursorline
set nocompatible
set tabstop=4
set shiftwidth=4

autocmd Filetype vue setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype sass setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype pug setlocal ts=4 sw=4 sts=0 expandtab

set smarttab
set et
set lz
set wrap
set ai
set cin
set showmatch
set hlsearch
set incsearch
set ignorecase
set so=7
set ruler
syntax enable

" COLORSCHEME AND THEME ===================================================
set t_Co=256
set background=dark

colorscheme PaperColor

let basecolorspace=256

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }

" EMMET ===================================================================
let g:user_emmet_settings = {
\    'html' : {
\        'comment_type': 'lastonly'
\    }
\}
