set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin('~/.vim/plugged')
" Deoplete Section
Plug 'shougo/deoplete.nvim'		" main
Plug 'zchee/deoplete-jedi'		" python - good
Plug 'zchee/deoplete-clang'		" clang  - good
"Plug 'carlitux/deoplete-ternjs' " js
"Plug 'lvht/phpcd.vim'			" php

Plug 'scrooloose/nerdTree'		" file explorer
Plug 'ajh17/spacegray.vim'		" color scheme
Plug 'tmsvg/pear-tree'			" delimiter pairing
Plug 'itchyny/lightline.vim'	" lightweight bar
Plug 'ryanoasis/vim-devicons'	" icons for nerdtree
Plug 'rust-lang/rust.vim'		" rust-lang
call plug#end()

colorscheme spacegray

" shows closing delimiter
let g:pear_tree_repeatable_expand = 0

" starts deoplete
let g:deoplete#enable_at_startup = 1

" binds toggle
nmap <C-n> :NERDTreeToggle<CR>
