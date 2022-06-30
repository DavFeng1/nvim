local colors = require('theme.colors')

-- " BlankLine
vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = colors.line, bg = colors.background2 })
vim.api.nvim_set_hl(0, 'IndentBlanklineSpaceChar', { fg = colors.line })
vim.api.nvim_set_hl(0, 'IndentBlanklineContextChar', { bg = colors.grey })


