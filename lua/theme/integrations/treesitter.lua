local colors = require("theme.colors")

-- " TREESITTER
vim.api.nvim_set_hl(0, "@comment", { fg = colors.grey })
vim.api.nvim_set_hl(0, "@string", { fg = colors.string })
vim.api.nvim_set_hl(0, "@constant", { fg = colors.pink })
vim.api.nvim_set_hl(0, "@KeywordFunction", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@function", { fg = colors.func })
vim.api.nvim_set_hl(0, "@function.call", { fg = colors.func })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = colors.blue })

vim.api.nvim_set_hl(0, "@conditional", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "@keyword.modifier.typescript", { fg = colors.type })

vim.api.nvim_set_hl(0, "@field", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@variable", { fg = colors.variable })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.pink })
vim.api.nvim_set_hl(0, "@variable.member", { fg = colors.variable })
vim.api.nvim_set_hl(0, "@operator", { fg = colors.operator })

vim.api.nvim_set_hl(0, "@property", { fg = colors.red })
vim.api.nvim_set_hl(0, "@parameter", { fg = colors.red })

vim.api.nvim_set_hl(0, "@method", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@include", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@type", { fg = colors.type })
vim.api.nvim_set_hl(0, "@type.qualifier", { fg = colors.purple })

vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = colors.blue })

vim.api.nvim_set_hl(0, "@constructor", { fg = colors.red })
vim.api.nvim_set_hl(0, "@label", { fg = colors.red })

-- Context
vim.api.nvim_set_hl(0, "TreeSitterContext", { fg = colors.background })
vim.api.nvim_set_hl(0, "TreeSitterContextBottom", { bg = colors.background })
