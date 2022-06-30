local colors = require('theme.colors')

-- " Diffs
vim.api.nvim_set_hl(0, 'DiffAdd', {bg = colors.background2, fg = colors.dark_green })
vim.api.nvim_set_hl(0, 'DiffChange', {bg = colors.background2, fg = colors.blue })
vim.api.nvim_set_hl(0, 'DiffDelete', {bg = colors.background2, fg = colors.red })

vim.api.nvim_set_hl(0, 'Error', {fg =  colors.red, bg = colors.background})
vim.api.nvim_set_hl(0, 'Normal', {fg =  colors.white, bg = colors.background2})
vim.api.nvim_set_hl(0, 'NonText', {fg = colors.background2})
vim.api.nvim_set_hl(0, 'LineNr', {fg = colors.light_grey})


-- PMenu
vim.api.nvim_set_hl(0, 'PMenu', {fg = colors.white, bg = colors.background3})
vim.api.nvim_set_hl(0, 'PmenuSel', { fg = colors.white, bg = colors.background4})
vim.api.nvim_set_hl(0, 'PmenuSbar', {fg = colors.red})
vim.api.nvim_set_hl(0, 'PmenuThumb', {fg = colors.red})


vim.api.nvim_set_hl(0, 'VertSplit', {fg = colors.line , bg = colors.background2})
vim.api.nvim_set_hl(0, 'Visual', { bg = colors.lightbg })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = colors.background2 })

