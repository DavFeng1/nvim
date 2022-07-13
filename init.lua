-- Modules + Setup
require "plugins"

-- Theme
require "theme"

-- Vim scripts
vim.cmd('source ~/.config/nvim/base.vim')
vim.cmd('source ~/.config/nvim/binds.vim')


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
