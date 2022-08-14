local colors = require('theme.colors')

vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg =  colors.neo_tree_background, fg = colors.light_white })
vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg =  colors.neo_tree_background, fg = colors.light_white })
vim.api.nvim_set_hl(0, 'NeoTreeWinSeparator', { bg =  colors.neo_tree_background, fg = colors.neo_tree_background })
vim.api.nvim_set_hl(0, 'NeoTreeDirectoryName', { fg = colors.light_white })
vim.api.nvim_set_hl(0, 'NeoTreeDirectoryIcon', { fg = colors.light_white })
vim.api.nvim_set_hl(0, 'NeoTreeDotFile', { fg = colors.light_white })
vim.api.nvim_set_hl(0, 'NeoTreeGitModified', { fg = colors.neo_tree_modified })


-- Winbar 
vim.api.nvim_set_hl(0, 'NeoTreeTabActive', { bg = colors.background1 })
vim.api.nvim_set_hl(0, 'NeoTreeTabSeparatorActive', { bg = colors.background1 })
vim.api.nvim_set_hl(0, 'NeoTreeTabInactive', { bg = colors.neo_tree_background })
vim.api.nvim_set_hl(0, 'NeoTreeTabSeparatorInactive', { bg = colors.neo_tree_background })



-- Root
vim.api.nvim_set_hl(0, 'NeoTreeRootName', { fg = colors.light_white })

