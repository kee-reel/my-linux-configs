colorscheme molokai

syntax on
set rnu nu
set cursorline
set ttyfast
set nocompatible
set smartindent
set expandtab tabstop=4 shiftwidth=4
set wildmenu
set hls
set hid
set cc=100
set laststatus=2
set clipboard=unnamedplus
set foldenable foldmethod=syntax foldlevelstart=99
set splitbelow
set splitright
set path+=**

filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

vnoremap <C-V> "*p 
vnoremap <C-C> "*y
vnoremap p "_dP
noremap do do]c
noremap ]c ]czz
noremap [c [czz
noremap Y "+y
noremap n nzz

map <C-n> :cn<CR>
map <C-p> :cp<CR>
map <A-]> :pop<CR>
map <C-F> :Gr 
map <C-T> :tabf 

inoremap kj <Esc>
command! UpdateVimrc source ~/.config/nvim/init.vim
command! -nargs=1 Gr vimgrep /<args>/gj ./**
command! Header vs %:r.h
command! Src vs %:r.cpp

noremap <Tab> gt
noremap <S-Tab> gT
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
set tags=./tags;/
if &diff
    set noreadonly
endif
