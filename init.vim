source $HOME/.config/nvim/dov_mutatta.vim
source $HOME/.config/nvim/airl.vim
source $HOME/.config/nvim/rainbow.vim

let mapleader =","

"if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
"	echo "Downloading junegunn/vim-plug to manage plugins..."
"	silent !mkdir -p ~/.config/nvim/autoload/
"	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
"endif

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'LukeSmithxyz/vimling'
Plug 'bling/vim-airline'
Plug 'vifm/vifm.vim'
Plug 'kovetskiy/sxhkd-vim'
Plug 'ryanoasis/vim-webdevicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'run2cmd/ide.vim'
Plug 'codota/tabnine-vim'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'eslint/eslint'
Plug 'tc50cal/vim-terminal'
Plug 'vim-scripts/Conque-Shell'
Plug 'vim-python/python-syntax'
call plug#end()

set go=a
set nohlsearch
set clipboard=unnamedplus
nnoremap c "_c
set nocompatible
filetype plugin on
syntax on

fun! Start()

  enew

  setlocal
    \ bufhidden=wipe
    \ buftype=nofile
    \ nobuflisted
    \ nocursorcolumn
    \ nocursorline
    \ nolist
    \ nonumber
    \ noswapfile
    \ norelativenumber

  call append('$', "hello")

  setlocal
    \ nomodifiable
    \ nomodified

  nnoremap <buffer><silent> e :enew<CR>
  nnoremap <buffer><silent> i :enew <bar> startinsert<CR>
  nnoremap <buffer><silent> o :enew <bar> startinsert<CR>

endfun

if argc() == 0
  autocmd VimEnter * call Start()
endif

fun! Start()
    exec ":r ~/.config/start.conf"
endfunction
