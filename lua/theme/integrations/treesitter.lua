local colors = require("theme.colors")

-- " TREESITTER
vim.api.nvim_set_hl(0, "@comment", { fg = colors.grey })
vim.api.nvim_set_hl(0, "@string", { fg = colors.green })
vim.api.nvim_set_hl(0, "@constant", { fg = colors.pink })
vim.api.nvim_set_hl(0, "@KeywordFunction", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@function", { fg = colors.dark_blue })
vim.api.nvim_set_hl(0, "@function.call", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = colors.blue })

vim.api.nvim_set_hl(0, "@conditional", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword", { fg = colors.purple })

vim.api.nvim_set_hl(0, "@field", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@variable", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.pink })
vim.api.nvim_set_hl(0, "@operator", { fg = colors.cyan })

vim.api.nvim_set_hl(0, "@property", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@parameter", { fg = colors.orange })

vim.api.nvim_set_hl(0, "@method", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@include", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@type", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "@type.builtin.typescript", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "@type.qualifier", { fg = colors.purple })

vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = colors.blue })

vim.api.nvim_set_hl(0, "@constructor", { fg = colors.red })
vim.api.nvim_set_hl(0, "@label", { fg = colors.orange })

-- Context
vim.api.nvim_set_hl(0, "TreeSitterContext", { fg = colors.background1 })
