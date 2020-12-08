set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin('~/.vim/plugged')
" Deoplete Section
Plug 'shougo/deoplete.nvim'             " main
Plug 'zchee/deoplete-jedi'              " python - good
Plug 'zchee/deoplete-clang'             " clang  - good
"Plug 'carlitux/deoplete-ternjs'         " js
"Plug 'lvht/phpcd.vim'                   " php
Plug 'vim-scripts/dbext.vim'

Plug 'scrooloose/nerdTree'              " file explorer
Plug 'scrooloose/nerdcommenter'         " commenting powers
Plug 'ajh17/spacegray.vim'              " color scheme
Plug 'tmsvg/pear-tree'                  " delimiter pairing
Plug 'itchyny/lightline.vim'            " lightweight bar
Plug 'ryanoasis/vim-devicons'           " icons for nerdtree
Plug 'rust-lang/rust.vim'               " rust-lang
Plug 'lervag/vimtex'                    " latex
Plug 'xuhdev/vim-latex-live-preview'    " latex live preview
call plug#end()

colorscheme spacegray

filetype plugin on

" for vimtex
let g:tex_flavor = 'latex'

" for latex preview
"command Lview execute "LLPStartPreview"

" shows closing delimiter
let g:pear_tree_repeatable_expand = 0

" starts deoplete
let g:deoplete#enable_at_startup = 1

" binds nerdtree toggle
nmap <C-n> :NERDTreeToggle<CR>

" for moving rows up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterSexy
"<CR>gv

" tabbing
vnoremap > ><CR>gv
vnoremap < <<CR>gv
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
