local colors = require('theme.colors')

-- Built in
vim.api.nvim_set_hl(0, 'Type', { fg = colors.yellow })

-- " TREESITTER
vim.api.nvim_set_hl(0, 'TSComment', { fg = colors.grey })
vim.api.nvim_set_hl(0, 'TSString', { fg = colors.green})
vim.api.nvim_set_hl(0, 'TSConstant', { fg = colors.pink })
vim.api.nvim_set_hl(0, 'TSKeywordFunction', { fg = colors.purple })
vim.api.nvim_set_hl(0, 'TSFunction', { fg = colors.dark_blue })

vim.api.nvim_set_hl(0, 'TSConditional', { fg = colors.purple })
vim.api.nvim_set_hl(0, 'TSKeyword', { fg = colors.purple })

vim.api.nvim_set_hl(0, 'TSField', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'TSVariable', { fg = colors.pink })
vim.api.nvim_set_hl(0, 'TSVariableBuiltin', { fg = colors.pink })
vim.api.nvim_set_hl(0, 'TSParameter', { fg = colors.pink })

vim.api.nvim_set_hl(0, 'TSProperty', { fg = colors.orange })

vim.api.nvim_set_hl(0, 'TSMethod', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'TSInclude', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'TSType', { fg = colors.yellow })

vim.api.nvim_set_hl(0, 'TSPunctBracket', { fg = colors.red })

vim.api.nvim_set_hl(0, 'TSConstructor', { fg = colors.red })




