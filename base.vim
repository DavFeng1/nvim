
set backspace=indent,eol,start
set number
set nocompatible
set tgc

set cursorline
set tabstop=4
set shiftwidth=4
set scrolloff=20

" Left padding
set numberwidth=4

" Folding with tree-sitter
set foldmethod=indent
" set foldexpr=nvim_treesitter#foldexpr()
set foldnestmax=3
" set foldtext=getline(v:foldstart).'...'.trim(getline(v:foldend))

" Note the space after the /
set fillchars=fold:\ 

" proper stuff
set fillchars+=vert:\▕

" Remove eof characters (note the space)
set fillchars+=eob:\ 

" Set sign column always show
set signcolumn=yes:2

" move to bottom
set cmdheight=0

" timeoutlen
set timeoutlen=500

" enable mouse support for n v i modes
set mouse=nvi
