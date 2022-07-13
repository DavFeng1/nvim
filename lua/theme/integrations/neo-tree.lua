local colors = require('theme.colors')

vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg =  colors.neo_tree_background, fg = colors.light_white })
vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg =  colors.neo_tree_background, fg = colors.light_white })
vim.api.nvim_set_hl(0, 'NeoTreeWinSeparator', { bg =  colors.neo_tree_background, fg = colors.neo_tree_background })
vim.api.nvim_set_hl(0, 'NeoTreeDirectoryIcon', { fg = colors.blue })
