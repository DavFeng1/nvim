local colors = require('theme.colors')

vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = colors.git_signs_add })
vim.api.nvim_set_hl(0, 'GitSignsCurrentLineBlame', {
	fg = colors.git_signs_blame, 
	bg = colors.cursor_line_background })
