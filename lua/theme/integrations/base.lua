local colors = require('theme.colors')

-- " Diffs
vim.api.nvim_set_hl(0, 'DiffAdd', {bg = colors.background1, fg = colors.green })
vim.api.nvim_set_hl(0, 'DiffChange', {bg = colors.background1, fg = colors.yellow })
vim.api.nvim_set_hl(0, 'DiffDelete', {bg = colors.background1, fg = colors.red })

vim.api.nvim_set_hl(0, 'Error', {fg =  colors.red, bg = colors.background1})
vim.api.nvim_set_hl(0, 'ErrorMsg', {fg =  colors.red, bg = colors.background1})
vim.api.nvim_set_hl(0, 'Normal', {fg =  colors.white, bg = colors.background1})
-- vim.api.nvim_set_hl(0, 'NonText', {fg = colors.neo_tree_background })

vim.api.nvim_set_hl(0, 'Folded', {bg = colors.background1})

-- Cursor
vim.api.nvim_set_hl(0, 'Cursor', {fg = colors.background1 })
vim.api.nvim_set_hl(0, 'CursorLine', {bg = colors.cursor_line_background})
vim.api.nvim_set_hl(0, 'CursorLineNr', {fg = colors.light_white})
vim.api.nvim_set_hl(0, 'LineNr', {fg = colors.white})

-- PMenu
vim.api.nvim_set_hl(0, 'PMenu', {fg = colors.white, bg = colors.pmenu_bg })
vim.api.nvim_set_hl(0, 'PmenuSel', { fg = colors.pmenu_bg, bg = colors.pmenu_sel_bg })

vim.api.nvim_set_hl(0, 'PmenuSbar', { bg = colors.background2 })
vim.api.nvim_set_hl(0, 'PmenuThumb', { bg = colors.blue })

vim.api.nvim_set_hl(0, 'VertSplit', {fg = colors.line , bg = colors.background1})
vim.api.nvim_set_hl(0, 'Visual', { bg = colors.lightbg })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = colors.background1 })

