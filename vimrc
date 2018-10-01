set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" We use pathogen to manage the plugins and the runtime path
" just put a plugin into ~.vim/bundle/ and it works, WOW
execute pathogen#infect()

" plugins themselfs are installed as seen below
" $ cd ~/.vim
" $ git submodule add git@source/pluginname.git bundle/pluginname

" When just fetched the this repo on another machine, just do
" git submodule init
" and this one for updating the plugin
" git submodule update


filetype on
syntax on
colorscheme Tomorrow-Night-Eighties

" SETTINGS

" set font to menlo with 18pt
set guifont=Menlo\ Regular:h12

" open vim with a pre-definied size, only if gui is available
if has("gui_running")
  set lines=75 columns=150
endif

" grey highlight to indicate 80 character
set colorcolumn=80

" turn on line numbers
set number

" allow vim to open a new buffer with unsaved changes in the current
set hidden

" set history to 100 items
set history=100

" some rules for indentation:
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" turn on highlighting for search results
set hlsearch

" highligh the current line we are editiing
set cursorline

" show the cursors position in the bottom right corner
set ruler

" highlgight the matching parenthesis under the cursor
set showmatch

"disable the anoying bell
set noerrorbells
set novisualbell


" KEYBOARD MAPPING

" open the previous file by hitting the leader key twice
nnoremap <Leader><Leader> :e#<CR>

" break search process hitting ESC; usefull for long files
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" remapping the save command, this deltes whtiespaces
autocmd BufWritePre * :%s/\s\+$//e

"set leader key to space
let mapleader=" "
