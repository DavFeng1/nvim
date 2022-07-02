local colors = require('theme.colors')

vim.api.nvim_set_hl(0, 'NvimTreeNormal', { bg =  colors.background1, fg = colors.grey })

vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker', {fg = colors.light_white })

vim.api.nvim_set_hl(0, 'NvimTreeWinSeparator', {fg = colors.background3, bg = colors.background1})

vim.api.nvim_set_hl(0, 'NvimTreeCursorLine', {fg = colors.red, bg = colors.background2})

vim.api.nvim_set_hl(0, 'NvimTreeRootfolder', {fg = colors.light_white})

vim.api.nvim_set_hl(0, 'NvimTreeEmptyFolderName', {fg = colors.folder_bg})
vim.api.nvim_set_hl(0, 'NvimTreeFolderName', {fg = colors.grey})
vim.api.nvim_set_hl(0, 'NvimTreeFolderIcon', {fg = colors.folder_bg})

vim.api.nvim_set_hl(0, 'NvimTreeGitDirty', { fg = colors.red })

vim.api.nvim_set_hl(0, 'NvimTreeOpenedFile', { fg = colors.white })
vim.api.nvim_set_hl(0, 'NvimTreeOpenedFolderName', { fg = colors.light_white })
