local colors = require('theme.colors')

-- " BUFFERLINE
vim.api.nvim_set_hl(0, 'BufferLineFill', { bg = colors.background3 })

vim.api.nvim_set_hl(0, 'BufferLineBackground', { bg = colors.background })

vim.api.nvim_set_hl(0, 'BufferLineCloseButton', { bg = colors.darkest_bg })
vim.api.nvim_set_hl(0, 'BufferLineDevIconLua', { bg = colors.background })
vim.api.nvim_set_hl(0, 'BufferLineDiagnostic', { bg = colors.background })
vim.api.nvim_set_hl(0, 'BufferLineModified', { bg = colors.background })

-- " Tab has an error
vim.api.nvim_set_hl(0, 'BufferLineError', { bg = colors.background, fg = colors.red })
vim.api.nvim_set_hl(0, 'BufferLIneErrorDiagnostic', { bg = colors.background, fg = colors.red })
vim.api.nvim_set_hl(0, 'BufferLineErrorDiagnosticSelected', {})

vim.api.nvim_set_hl(0, 'BufferLineErrorSelected', { bg = colors.background2, fg = colors.red})
vim.api.nvim_set_hl(0, 'BufferLineErrorVisible', { bg = colors.red })

-- " Tab numbers
vim.api.nvim_set_hl(0, 'BufferLineNumbers', { bg = colors.background })
vim.api.nvim_set_hl(0, 'BufferLineNumbersVisible', { bg = colors.background })

vim.api.nvim_set_hl(0, 'BufferLineBufferSelected', { bg = colors.background2, fg = colors.light_white })

vim.api.nvim_set_hl(0, 'BufferLineIndicatorSelected', { bg = colors.background2, fg = colors.background2 })

vim.api.nvim_set_hl(0, 'BufferLineInfoVisible', { bg = colors.red })
vim.api.nvim_set_hl(0, 'BufferLineHintDiagonisticVisible', { bg = colors.red })
vim.api.nvim_set_hl(0, 'BufferLineWarningVisible', { bg = colors.red })


-- Separator
vim.api.nvim_set_hl(0, 'BufferLineSeparator', { fg = colors.line,  bg = colors.red })
-- vim.api.nvim_set_hl(0, 'BufferLineSeparatorVisible', { bg = colors.green })
-- vim.api.nvim_set_hl(0, 'BufferLineSeparatorSelected', { bg = colors.purple })


