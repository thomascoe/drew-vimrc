" Fix shell
set shell=/bin/bash

" Not compatible with Vi
set nocompatible

" Vundle
source ~/.vimrc_vundle

" Plugins
source ~/.vimrc_plugins

" User files (optional)
silent! source ~/.vimrc_user

" Navigation
set mouse=a
set foldmethod=syntax
set foldlevelstart=99
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
nnoremap  <tab> :bn<CR>
nnoremap  <S-tab> :bp<CR>
nnoremap  <Space>  za

" Relative line numbers
set number

" Fix backspace
set backspace=indent,eol,start

" Display
set encoding=utf-8
set t_Co=256
colorscheme obsidian
set guifont=Ubuntu\ Mono\ 13
syntax on
set cursorline
set nowrap
set splitbelow
set hidden

" Powerline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" Syntastic
let g:syntastic_c_compiler_options = '-Wall -std=c99 -pedantic'
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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

" :RTW = Remove Trailing Whitespace
command RTW :%s/\s\+$//e

" :CDC = Change to Directory of Current file
command CDC cd %:p:h

" :TeX = Write the file, then run pdflatex on it
command TeX :w | :!pdflatex %

" :comment = Disable continuation of comments into new lines (useful for paste)
command Comment setlocal formatoptions-=ro

" TeX Settings. Sets all TeX files to plaintex instead in order to speed up
" Vim. Also enables wrapping for TeX files.
autocmd FileType tex set filetype=plaintex | set wrap | set spell

" Miscellaneous
set nospell
set list lcs=tab:\|\ ,trail:•,extends:#,nbsp:.
let g:autoclose_vim_commentmode = 1
set cryptmethod=blowfish

