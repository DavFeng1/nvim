
-- Leader
vim.g.mapleader = " "

--- Keybindings
local opts = { noremap = true, silent = true }

-- Save file
vim.keymap.set('n', '<C-s>', '<Cmd>w<CR>', opts)

-- Clear search 
vim.keymap.set('n', '<Leader><Space>', ':noh<CR>', opts)

-- Telescope
vim.keymap.set('n', '<C-p>', '<Cmd>Telescope find_files<CR>', opts)
vim.keymap.set('n', '<C-f>', '<Cmd>Telescope live_grep<CR>', opts)

-- Neo Tree
vim.keymap.set('n', '<Leader>e', '<cmd>NeoTreeShowToggle<cr>', opts)

-- Bufferline
vim.keymap.set('n', '<Leader>1', '<Cmd>BufferGoto 1<CR>', opts)
vim.keymap.set('n', '<Leader>2', '<Cmd>BufferGoto 2<CR>', opts)
vim.keymap.set('n', '<Leader>3', '<Cmd>BufferGoto 3<CR>', opts)
vim.keymap.set('n', '<Leader>4', '<Cmd>BufferGoto 4<CR>', opts)
vim.keymap.set('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
vim.keymap.set('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
vim.keymap.set('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
vim.keymap.set('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
vim.keymap.set('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)

-- Close tab 
vim.keymap.set('n', '<leader>w', '<Cmd>BufferWipeout<cr>', opts)


-- LSP
vim.keymap.set('n', '<Leader>gd', '<Cmd> lua vim.lsp.buf.definition()<cr>', opts)


-- ToggleTerm
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

vim.keymap.set('n',  '<C-\\>', '<cmd>ToggleTerm direction=horizontal<cr>', opts)
vim.keymap.set('n', '<leader>tp', '<cmd> lua _PYTHON_TOGGLE()<cr>', opts)
vim.keymap.set('n', '<leader>tn', '<cmd> lua _NODE_TOGGLE()<cr>', opts)
vim.keymap.set('n', '<leader>tl', '<cmd> lua _LUA_TOGGLE()<cr>', opts)

vim.keymap.set('t',  '<Esc>', '<C-\\><C-n>', opts) -- Escape terminal


-- Adjust pane size
vim.keymap.set('n', '<C-Up>', '<cmd> :resize +2<cr>', opts)
vim.keymap.set('n', '<C-Down>', '<cmd> :resize -2<cr>', opts)
vim.keymap.set('n', '<C-Left>', '<cmd> :vertical resize +2<cr>', opts)
vim.keymap.set('n', '<C-Right>', '<cmd> :vertical resize -2<cr>', opts)

-- Toggle through command suggestions
vim.cmd [[
	cnoremap <expr> <C-k> wildmenumode() ? "\<C-P>" : "\<Up>"
	cnoremap <expr> <C-j> wildmenumode() ? "\<C-N>" : "\<Down>"
]]

-- Show all highlights
vim.keymap.set('n', '<leader>hi', '<cmd>so $VIMRUNTIME/syntax/hitest.vim<cr><cr>', opts)

-- WSL copy to windows clipboard
vim.keymap.set('v', '<Leader>y', ':<C-U>\'<,\'>w !clip.exe<cr><cr>', opts)


-- LSP Saga
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', '<C-h>', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gf', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-l>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', '<C-i>', '<Cmd>Lspsaga preview_definition<CR>', opts)
-- vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)

