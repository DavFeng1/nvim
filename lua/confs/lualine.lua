local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

--- Make status line global (away from nvimtree)
vim.opt.laststatus = 3
-- Color table for highlights
-- stylua: ignore
local colors = require('theme.colors')

local custom_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.orange },
    b = { fg = colors.white, bg = colors.lualine_background },
    c = { fg = colors.light_white, bg = colors.lualine_background },
  },

  insert = { a = { fg = colors.light_white, bg = colors.lualine_background2 } },
  visual = { a = { fg = colors.black, bg = colors.green } },
  replace = { a = { fg = colors.black, bg = colors.purple } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.white, bg = colors.black },
  },
}

lualine.setup {
	options = {
		icons_enabled = true,
		theme = custom_theme,
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
		disabled_filetypes = {},
		always_divide_middle = true,
		globalstatus = false,
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {'filename'},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	},
  	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
  	},
  	tabline = {},
  	extensions = {}
}
