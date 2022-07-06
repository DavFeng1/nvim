local colors = require('theme.colors')

-- Menu
vim.api.nvim_set_hl(0, 'CmpPmenu', { fg = colors.white, bg = colors.cmp_background })
vim.api.nvim_set_hl(0, 'CmpBorder', { fg = colors.blue, bg = colors.cmp_background })
vim.api.nvim_set_hl(0, 'CmpDocBorder', {  fg = colors.blue, bg = colors.cmp_background })
vim.api.nvim_set_hl(0, 'CmpDocPMenu', { bg = colors.cmp_background })
vim.api.nvim_set_hl(0, 'CmpPmenuBorder', { bg = colors.yellow })

-- Defaults
vim.api.nvim_set_hl(0, 'CmpItemKindDefault', { fg = colors.white, bg = colors.cmp_background })
vim.api.nvim_set_hl(0, 'CmpItemMenuDefault', { fg = colors.white, bg = colors.cmp_background })
vim.api.nvim_set_hl(0, 'CmpItemAbbrDefault', { fg = colors.grey, bg = colors.cmp_background })


-- Matches
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchDefault', { fg = colors.white })
vim.api.nvim_set_hl(0, 'MatchParen', { bg = colors.white })


-- Kindas
vim.api.nvim_set_hl(0, 'CmpItemKindField', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindEvent', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindEnum', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindText', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindConstant', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindConstructor', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindReference', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindStruct', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindClass', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindModule', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindOperator', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindFile', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindUnit', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindSnippet', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindFolder', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindValue', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindEnumMember', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindColor', { fg = colors.blue })
vim.api.nvim_set_hl(0, 'CmpItemKindTypeParameter', { fg = colors.blue })

