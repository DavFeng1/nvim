" Leader
let mapleader = " "

" Save file
nnoremap <C-s> <cmd>w<cr>

" Telescope keybinds Ctrl+P
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-f> <cmd>Telescope live_grep<cr>

" Clear search 
nnoremap <Leader><space> :noh<cr>

" Toggle Explorer
nnoremap <Leader>e <cmd>NvimTreeToggle<cr>
" nnoremap <Leader>er <cmd>NvimTreeRefresh<cr>
" nnoremap <Leader>ef <cmd>NvimTreeFindFile<cr>
" nnoremap <Leader>ec <cmd>NvimTreeCollapse<cr>

" Bufferline
nnoremap <leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <leader>9 <Cmd>BufferLineGoToBuffer 9<CR>

" Close tab without closing all
nnoremap <leader>w <Cmd>bd<bar>bp<cr>

" LSP Keybinds
nnoremap <leader>gd <cmd> lua vim.lsp.buf.definition()<cr>
nnoremap <leader>h <cmd> lua vim.lsp.buf.hover()<cr>

" Toggle terminal
nnoremap <c-\> <cmd>ToggleTerm direction=vertical<cr>
nnoremap <leader>tp <cmd> lua _PYTHON_TOGGLE()<cr>
nnoremap <leader>tn <cmd> lua _NODE_TOGGLE()<cr>
nnoremap <leader>tl <cmd> lua _LUA_TOGGLE()<cr>

" Adjust pane size
nnoremap <C-Up> <cmd> :resize +2<cr>
nnoremap <C-Down> <cmd> :resize -2<cr>
nnoremap <C-Left> <cmd> :vertical resize +2<cr>
nnoremap <C-Right> <cmd> :vertical resize -2<cr>

" Toggle through command suggestions
cnoremap <expr> <C-k> wildmenumode() ? "\<C-P>" : "\<Up>"
cnoremap <expr> <C-j> wildmenumode() ? "\<C-N>" : "\<Down>"

" Show all highlights
nnoremap <leader>hi <cmd>so $VIMRUNTIME/syntax/hitest.vim<cr><cr>

" WSL copy to windows clipboard
vnoremap <silent><leader>y :<C-U>'<,'>w !clip.exe<cr><cr>



