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

set path+=**
let @g='0wveyA`json:""`hhpb~j0'

command! MakeTags !ctags -R .

filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

nmap <F1> :tabe ~/.config/nvim/init.vim<CR>
nmap <F2> :tabe ~/.bashrc<CR>

set nocompatible              " be iMproved, required
filetype off                  " required
