
set backspace=indent,eol,start
set number
set nocompatible
set tgc

set cursorline
set tabstop=4
set shiftwidth=4
set scrolloff=20

" Left padding
set numberwidth=3

" Folding with tree-sitter
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldnestmax=5
set foldtext=getline(v:foldstart).'...'.trim(getline(v:foldend))

" Note the space after the /
set fillchars=fold:\ 

" Set sign column always show
set signcolumn=yes

" move to bottom
set cmdheight=0

" timeoutlen
set timeoutlen=500

" enable mouse support for n v i modes
set mouse=nvi

