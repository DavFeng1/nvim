
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
vim.keymap.set('n', '<Leader>5', '<Cmd>BufferGoto 5<CR>', opts)
vim.keymap.set('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
vim.keymap.set('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
vim.keymap.set('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
vim.keymap.set('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)

-- Close tab 
vim.keymap.set('n', '<leader>w', '<Cmd>BufferWipeout!<cr>', opts)


-- LSP
vim.keymap.set('n', '<C-d>', '<Cmd> lua vim.lsp.buf.definition()<cr>', opts)


-- ToggleTerm
vim.keymap.set('n',  '<C-\\>', '<cmd>ToggleTerm direction=horizontal<cr>', opts)
vim.keymap.set('n', '<leader>tp', '<cmd> lua _PYTHON_TOGGLE()<cr>', opts)
vim.keymap.set('n', '<leader>tn', '<cmd> lua _NODE_TOGGLE()<cr>', opts)
vim.keymap.set('n', '<leader>tl', '<cmd> lua _LUA_TOGGLE()<cr>', opts)
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
vim.keymap.set('t', '<C-\\', [[<Cmd>ToggleTerm <CR>]], opts)

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
vim.keymap.set('n', '<C-k>', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
vim.keymap.set('n', '<C-h>', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', '<C-u>', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', '<C-l>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', '<C-i>', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', '<C-a>', '<Cmd>Lspsaga code_action<CR>', opts)

-- Debug
vim.keymap.set('n', '<C-b>', '<Cmd> lua require\'dap\'.toggle_breakpoint() <CR>', opts)
vim.keymap.set('n', '<S-k>', '<Cmd> lua require\'dap\'.step_out() <CR>', opts)
vim.keymap.set('n', '<S-l>', '<Cmd> lua require\'dap\'.step_into() <CR>', opts)
vim.keymap.set('n', '<S-j>', '<Cmd> lua require\'dap\'.step_over() <CR>', opts)

