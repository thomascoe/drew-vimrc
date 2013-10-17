" Fix shell
set shell=/bin/bash

" Not compatible with Vi
set nocompatible

" Vundle
source ~/.vimrc_vundle

" Bundles
source ~/.vimrc_bundles

" Navigation
set mouse=a
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
nnoremap  <tab> :bn<CR>

" Relative line numbers
" set rnu
" set nu

" Fix backspace
set backspace=indent,eol,start

" Display
set encoding=utf-8
set t_Co=256
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
" colorscheme molokai
colorscheme mrkn256
set guifont=Ubuntu\ Mono\ 13
syntax on
set cursorline
set nowrap
set splitbelow
set hidden

" Powerline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" Line End Column
set colorcolumn=81
highlight ColorColumn ctermbg=13

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
let g:indentLine_char = '┆'
let g:indentLine_color_term = 128

" Searching
set hlsearch
set ignorecase
set smartcase

" NERDTree
map <C-e> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1

" Remove Trailing Whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" Miscellaneous
set nospell
set list lcs=tab:\|\ ,trail:•,extends:#,nbsp:.
let g:autoclose_vim_commentmode = 1

