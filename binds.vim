" Leader
let mapleader = " "

" Save file
nnoremap <C-s> <cmd>w<cr>1

" Telescope keybinds Ctrl+P
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <Leader>f <cmd>Telescope live_grep<cr>

" Clear search 
nnoremap <Leader><space> :noh<cr>

" Toggle Explorer
nnoremap <Leader>e <cmd>NvimTreeToggle<cr>
" nnoremap <Leader>er <cmd>NvimTreeRefresh<cr>
" nnoremap <Leader>ef <cmd>NvimTreeFindFile<cr>
" nnoremap <Leader>ec <cmd>NvimTreeCollapse<cr>

" Bufferline
nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>

" Close tab without closing all
nnoremap <leader>w <Cmd>bd<bar>bp<cr>

" WSL copy to windows clipboard
vnoremap <silent><leader>y :<C-U>'<,'>w !clip.exe<cr><cr>

" LSP Keybinds
nnoremap <leader>gd <cmd> lua vim.lsp.buf.definition()<cr>
nnoremap <leader>h <cmd> lua vim.lsp.buf.hover()<cr>

" Toggle terminal
nnoremap <c-\> <cmd>ToggleTerm direction=float<cr>
nnoremap <leader>tp <cmd> lua _PYTHON_TOGGLE()<cr>
nnoremap <leader>tn <cmd> lua _NODE_TOGGLE()<cr>
nnoremap <leader>tl <cmd> lua _LUA_TOGGLE()<cr>
