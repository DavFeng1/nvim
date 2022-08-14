local colors = require('theme.colors')

vim.api.nvim_set_hl(0, 'WinBarPath', { bg = colors.winbar_background, fg = colors.white})
vim.api.nvim_set_hl(0, 'WinBarFileName', { bg = colors.winbar_background, fg = colors.light_white})

