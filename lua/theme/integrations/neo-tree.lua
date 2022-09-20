local colors = require('theme.colors')

vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = colors.neo_tree_background, fg = colors.white })
vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = colors.neo_tree_background, fg = colors.white })

vim.api.nvim_set_hl(0, 'NeoTreeStatusLine', { bg = colors.green, fg = colors.white })
vim.api.nvim_set_hl(0, 'NeoTreeStatusLineNC', { bg = colors.green, fg = colors.red })

vim.api.nvim_set_hl(0, 'NeoTreeWinSeparator', { fg = colors.background1, bg = colors.background1 })

vim.api.nvim_set_hl(0, 'NeoTreeDirectoryName', { fg = colors.white })
vim.api.nvim_set_hl(0, 'NeoTreeDotFile', { fg = colors.grey })
vim.api.nvim_set_hl(0, 'NeoTreeGitModified', { fg = colors.neo_tree_modified })


-- Winbar 
vim.api.nvim_set_hl(0, 'NeoTreeTabActive', { bg = colors.neo_tree_background })
vim.api.nvim_set_hl(0, 'NeoTreeTabSeparatorActive', { bg = colors.neo_tree_background })
vim.api.nvim_set_hl(0, 'NeoTreeTabInactive', { })
vim.api.nvim_set_hl(0, 'NeoTreeTabSeparatorInactive', { })

-- Root
vim.api.nvim_set_hl(0, 'NeoTreeRootName', { fg = colors.white })

-- Popup
vim.api.nvim_set_hl(0, 'NeoTreeFloatBorder', { fg = colors.neo_tree_background, bg = colors.neo_tree_background })
vim.api.nvim_set_hl(0, 'NeoTreeFloatTitle', { bg = colors.neo_tree_background, fg = colors.neo_tree_background })

