vim.cmd('source ~/.config/nvim/base.vim')
vim.cmd('source ~/.config/nvim/binds.vim')

-- Modules + Setup
require "plugins"

-- Theme
require "theme"

-- Vim scripts


vim.api.nvim_create_autocmd('BufWinEnter', {
	pattern = '*',
	callback = function()
		if vim.bo.filetype == 'neo-tree' then
			require'bufferline.state'.set_offset(41, '')
		end
  end
})

vim.api.nvim_create_autocmd('BufWinLeave', {
	pattern = '*',
		callback = function()
			if vim.fn.expand('<afile>') == 'neo-tree filesystem [1]' then
				require'bufferline.state'.set_offset(0)
		end
	end
})


local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', '<C-k>', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gf', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-l>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', '<C-i>', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
