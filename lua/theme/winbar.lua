local colors = require('theme.colors')


vim.api.nvim_set_hl(0, 'WinBar', { fg = colors.winbar_background })
vim.api.nvim_set_hl(0, 'WinBarNC', { bg = colors.winbar_background })
vim.api.nvim_set_hl(0, 'WinBarPath', { fg = colors.white, bg = colors.winbar_background })
vim.api.nvim_set_hl(0, 'WinBarFileName', { fg = colors.light_white, bg = colors.winbar_background })
