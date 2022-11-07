local colors = require('theme.colors')

-- Built in
vim.api.nvim_set_hl(0, 'Type', { fg = colors.yellow })

-- " TREESITTER
vim.api.nvim_set_hl(0, '@Comment', { fg = colors.grey })
vim.api.nvim_set_hl(0, '@String', { fg = colors.green})
vim.api.nvim_set_hl(0, '@Constant', { fg = colors.pink })
vim.api.nvim_set_hl(0, '@KeywordFunction', { fg = colors.purple })
vim.api.nvim_set_hl(0, '@Function', { fg = colors.dark_blue })

vim.api.nvim_set_hl(0, '@Conditional', { fg = colors.purple })
vim.api.nvim_set_hl(0, '@Keyword', { fg = colors.purple })

vim.api.nvim_set_hl(0, '@Field', { fg = colors.blue })
vim.api.nvim_set_hl(0, '@Variable', { fg = colors.pink })
vim.api.nvim_set_hl(0, '@VariableBuiltin', { fg = colors.pink })
vim.api.nvim_set_hl(0, '@Parameter', { fg = colors.pink })

vim.api.nvim_set_hl(0, '@Property', { fg = colors.green })

vim.api.nvim_set_hl(0, '@Method', { fg = colors.blue })
vim.api.nvim_set_hl(0, '@Include', { fg = colors.blue })
vim.api.nvim_set_hl(0, '@Type', { fg = colors.yellow })

vim.api.nvim_set_hl(0, '@PunctBracket', { fg = colors.red })

vim.api.nvim_set_hl(0, '@Constructor', { fg = colors.red })
vim.api.nvim_set_hl(0, '@Label', { fg = colors.orange })




