-- Auto commands
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
});


vim.diagnostic.config({
	virtual_text = false,
})


vim.opt.termguicolors = true
vim.opt.backspace = 'indent,eol,start'
vim.opt.number = true

vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 20
vim.opt.laststatus = 3

-- Left padding
vim.opt.numberwidth = 4

-- " Note the space after the /
vim.opt.fillchars='fold: '

vim.cmd[[
	set fillchars+=vert:\▕
	set fillchars+=eob:\ 
]]

-- Set sign column always show
vim.opt.signcolumn='yes:2'

vim.opt.cmdheight=0

vim.opt.timeoutlen=500
vim.opt.mouse='nvi'

vim.opt.winbar = "%{%v:lua.require('winbar').eval()%}"




