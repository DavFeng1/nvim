local colors = require('theme.colors')

vim.api.nvim_set_hl(0, 'ToggleTerm1Normal',  { fg = colors.white, bg = colors.toggle_term_background})
vim.api.nvim_set_hl(0, 'ToggleTerm1StatusLine',  { bg = colors.toggle_term_background})
vim.api.nvim_set_hl(0, 'ToggleTerm1StatusLineNC',  { bg = colors.toggle_term_background})

vim.api.nvim_set_hl(0, 'TerminalBackground', {bg = colors.toggle_term_background })
vim.api.nvim_set_hl(0, 'TerminalBorder', { bg = colors.toggle_term_background, fg = colors.white })


