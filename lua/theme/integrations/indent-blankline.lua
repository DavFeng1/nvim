local colors = require "theme.colors"

-- " BlankLine
vim.api.nvim_set_hl(0, "IblIndent", { fg = colors.ibl_line })
vim.api.nvim_set_hl(0, "IblWhitespace", { fg = colors.ibl_line })
vim.api.nvim_set_hl(0, "IblScope", { fg = colors.ibl_scope })
