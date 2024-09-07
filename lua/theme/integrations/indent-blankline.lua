local colors = require "theme.colors"

-- " BlankLine
vim.api.nvim_set_hl(0, "IblIndent", { fg = colors.line })
vim.api.nvim_set_hl(0, "IblWhitespace", { fg = colors.line })
vim.api.nvim_set_hl(0, "IblScope", { fg = colors.red })
