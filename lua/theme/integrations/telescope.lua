local colors = require('theme.colors')

vim.api.nvim_set_hl(0, 'TelescopeNormal',  { fg = colors.white, bg = colors.black})
vim.api.nvim_set_hl(0, 'TelescopeBorder',  { fg = colors.black, bg = colors.black})
vim.api.nvim_set_hl(0, 'TelescopeMatching',  { fg = colors.red  })
vim.api.nvim_set_hl(0, 'TelescopeSelection',  { fg = colors.white, bg = colors.lightbg })

vim.api.nvim_set_hl(0, 'TelescopePromptNormal',  { fg = colors.white, bg = colors.background2 })
vim.api.nvim_set_hl(0, 'TelescopePromptBorder',  { fg = colors.background2, bg = colors.background2 })
vim.api.nvim_set_hl(0, 'TelescopePromptPrefix',  { fg = colors.white, bg = colors.background2 })
vim.api.nvim_set_hl(0, 'TelescopePromptTitle',  { fg = colors.background2, bg = colors.blue })
vim.api.nvim_set_hl(0, 'TelescopePromptCounter',  { fg = colors.light_grey, bg = colors.background2 })

vim.api.nvim_set_hl(0, 'TelescopePreviewNormal',  { fg = colors.white, bg = colors.black })
vim.api.nvim_set_hl(0, 'TelescopePreviewBorder',  { fg = colors.black, bg = colors.black })
vim.api.nvim_set_hl(0, 'TelescopePreviewTitle',  { fg = colors.background, bg = colors.blue })


