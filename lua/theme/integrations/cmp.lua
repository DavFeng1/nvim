local colors = require('theme.colors')

-- Menu
vim.api.nvim_set_hl(0, 'CmpPmenu', { bg = colors.background3 })
vim.api.nvim_set_hl(0, 'CmpBorder', { fg = colors.background3, bg = colors.background3 })
vim.api.nvim_set_hl(0, 'CmpDocBorder', {  fg = colors.background3, bg = colors.background3 })
vim.api.nvim_set_hl(0, 'CmpDocPMenu', { bg = colors.background3 })
vim.api.nvim_set_hl(0, 'CmpPmenuBorder', { bg = colors.green })

-- Defaults
vim.api.nvim_set_hl(0, 'CmpItemKindDefault', { fg = colors.white, bg = colors.background3 })
vim.api.nvim_set_hl(0, 'CmpItemMenuDefault', { fg = colors.white, bg = colors.background3 })
vim.api.nvim_set_hl(0, 'CmpItemAbbrDefault', { fg = colors.light_grey, bg = colors.background3 })

-- Matches
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchDefault', { fg = colors.white })
vim.api.nvim_set_hl(0, 'MatchParen', { bg = colors.white })


-- Kindas
vim.api.nvim_set_hl(0, 'CmpItemKindField', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindEvent', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindEnum', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindText', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindConstant', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindConstructor', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindReference', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindStruct', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindClass', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindModule', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindOperator', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindFile', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindUnit', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindSnippet', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindFolder', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindValue', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindEnumMember', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindColor', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindTypeParameter', { fg = colors.green })

