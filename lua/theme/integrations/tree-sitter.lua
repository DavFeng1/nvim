local colors = require('theme.colors')

-- " TREESITTER
vim.api.nvim_set_hl(0, 'TSComment', { fg = colors.light_grey })
vim.api.nvim_set_hl(0, 'TSString', { fg = colors.green })
vim.api.nvim_set_hl(0, 'TSKeyword', { fg = colors.green })


