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

" open vim with a pre-definied size
set lines=75 columns=150

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
