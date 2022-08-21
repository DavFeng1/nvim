local colors = require('theme.colors')

-- Offset
vim.api.nvim_set_hl(0, 'BufferOffset', { bg = colors.neo_tree_background , fg = colors.light_white})

--  Current
vim.api.nvim_set_hl(0, 'BufferCurrent', { bg = colors.background1 , fg = colors.light_white})
vim.api.nvim_set_hl(0, 'BufferCurrentIcon', { bg = colors.background1 })
vim.api.nvim_set_hl(0, 'BufferCurrentIndex', { bg = colors.background1 , fg = colors.light_white})
vim.api.nvim_set_hl(0, 'BufferCurrentSign', { bg = colors.background1 , fg = colors.line})
vim.api.nvim_set_hl(0, 'BufferCurrentMod', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'BufferCurrentTarget', { bg = colors.background1 , fg = colors.light_white})

-- Visible
vim.api.nvim_set_hl(0, 'BufferVisible', { fg = colors.white, bg = colors.background1 })
vim.api.nvim_set_hl(0, 'BufferVisibleIcon', { bg = colors.background1 })
vim.api.nvim_set_hl(0, 'BufferVisibleIndex', { fg = colors.white, bg = colors.background1 })
vim.api.nvim_set_hl(0, 'BufferVisibleSign', { fg = colors.line, bg = colors.background1 })
vim.api.nvim_set_hl(0, 'BufferVisibleMod', { fg = colors.yellow, bg = colors.background1})
vim.api.nvim_set_hl(0, 'BufferVisibleTarget', { fg = colors.white, bg = colors.background1 })

-- Inactive
vim.api.nvim_set_hl(0, 'BufferInactive', { fg = colors.grey, bg = colors.barbar_background })
vim.api.nvim_set_hl(0, 'BufferInactiveIcon', { bg = colors.barbar_background })
vim.api.nvim_set_hl(0, 'BufferInactiveIndex', { fg = colors.white, bg = colors.barbar_background })
vim.api.nvim_set_hl(0, 'BufferInactiveSign', { fg = colors.line, bg = colors.barbar_background })
vim.api.nvim_set_hl(0, 'BufferInactiveMod', { fg = colors.yellow, bg = colors.barbar_background })
vim.api.nvim_set_hl(0, 'BufferInactiveTarget', { fg = colors.white, bg = colors.barbar_background })


-- Fill
vim.api.nvim_set_hl(0, 'BufferTabpage', { bg = colors.barbar_background , fg = colors.line})
vim.api.nvim_set_hl(0, 'BufferTabpageFill', { bg = colors.barbar_background , fg = colors.line})
