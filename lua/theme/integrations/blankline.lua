local colors = require('theme.colors')

-- " BlankLine
vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = colors.line })
vim.api.nvim_set_hl(0, 'IndentBlanklineSpaceChar', { fg = colors.line })
vim.api.nvim_set_hl(0, 'IndentBlanklineContextChar', { fg = colors.red })

