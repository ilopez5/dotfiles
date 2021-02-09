set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" vimrc section
set mouse=a
map <ScrollWheelUp> <Up>
map <ScrollWheelDown> <Down>
nnoremap ; :
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set number

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdTree'              " file explorer
Plug 'scrooloose/nerdcommenter'         " commenting powers
Plug 'ajh17/spacegray.vim'              " color scheme
Plug 'tmsvg/pear-tree'                  " delimiter pairing
Plug 'itchyny/lightline.vim'            " lightweight bar
Plug 'ryanoasis/vim-devicons'           " icons for nerdtree
Plug 'rust-lang/rust.vim'               " rust-lang
call plug#end()

colorscheme spacegray

filetype plugin on

" shows closing delimiter
let g:pear_tree_repeatable_expand = 0

" binds nerdtree toggle
nmap <C-n> :NERDTreeToggle<CR>

" for moving rows up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" comments
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterSexy

" tabbing
vnoremap > ><CR>gv
vnoremap < <<CR>gv
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
