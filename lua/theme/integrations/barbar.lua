local colors = require('theme.colors')

-- " BUFFERLINE
vim.api.nvim_set_hl(0, 'BufferLineFill', { bg = colors.background1 , fg = colors.green})
vim.api.nvim_set_hl(0, 'BufferLineBackground', { bg = colors.background1 })

vim.api.nvim_set_hl(0, 'BufferLineCloseButton', { bg = colors.background1 })
vim.api.nvim_set_hl(0, 'BufferLineDiagnostic', { bg = colors.background2 })
vim.api.nvim_set_hl(0, 'BufferLineModified', { bg = colors.background2 })

-- " Tab has an error
vim.api.nvim_set_hl(0, 'BufferLineError', { bg = colors.background, fg = colors.red })
vim.api.nvim_set_hl(0, 'BufferLIneErrorDiagnostic', { bg = colors.background, fg = colors.red })
vim.api.nvim_set_hl(0, 'BufferLineErrorDiagnosticSelected', {})

-- Default
vim.api.nvim_set_hl(0, 'BufferLineBuffer', { bg = colors.background2, fg = colors.white })
vim.api.nvim_set_hl(0, 'BufferLineSeparator', { fg = colors.red,  bg = colors.green })
vim.api.nvim_set_hl(0, 'BufferLineNumbers', { bg = colors.background })
vim.api.nvim_set_hl(0, 'BufferLineDevIconLua', { bg = colors.background1, fg = colors.blue })

-- Visible
vim.api.nvim_set_hl(0, 'BufferLineBufferVisible', { bg = colors.background1, fg = colors.white })
vim.api.nvim_set_hl(0, 'BufferLineSeparatorVisible', { bg = colors.red, fg = colors.green })
vim.api.nvim_set_hl(0, 'BufferLineNumbersVisible', { bg = colors.background2 })
vim.api.nvim_set_hl(0, 'BufferLineInfoVisible', { bg = colors.red })
vim.api.nvim_set_hl(0, 'BufferLineHintDiagonisticVisible', { bg = colors.red })
vim.api.nvim_set_hl(0, 'BufferLineWarningVisible', { bg = colors.red })
vim.api.nvim_set_hl(0, 'BufferLineErrorVisible', { bg = colors.red })
vim.api.nvim_set_hl(0, 'BufferLineDevIconLuaVisible', { fg = colors.blue, bg = colors.background1 })

-- Selected
vim.api.nvim_set_hl(0, 'BufferLineBufferSelected', { bg = colors.background1, fg = colors.orange })
vim.api.nvim_set_hl(0, 'BufferLineSeparatorSelected', { bg = colors.red, fg = colors.green })
vim.api.nvim_set_hl(0, 'BufferLineIndicatorSelected', { bg = colors.background1, fg = colors.background1 })
vim.api.nvim_set_hl(0, 'BufferLineErrorSelected', { bg = colors.background1, fg = colors.red })
vim.api.nvim_set_hl(0, 'BufferLineDevIconLuaSelected', { fg = colors.blue, bg = colors.background1 })

