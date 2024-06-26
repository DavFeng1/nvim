local colors = require("theme.colors")

vim.api.nvim_set_hl(0, "SagaBorder", { fg = colors.red })
vim.api.nvim_set_hl(0, "SagaShadow", { bg = colors.green })
vim.api.nvim_set_hl(0, "SagaNormal", { bg = colors.background1 })
