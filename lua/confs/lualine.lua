local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

--- Make status line global (away from nvimtree)
vim.opt.laststatus = 3
-- Color table for highlights
-- stylua: ignore
local colors = require('theme.colors')
local icons = require "theme.icons"

vim.api.nvim_set_hl(0, "LuaLineDiffAdd", { fg = colors.green })
vim.api.nvim_set_hl(0, "LuaLineDiffChange", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "LuaLineDiffDelete", { fg = colors.red })

local custom_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.red },
    b = { fg = colors.red, bg = colors.lualine_background },
    c = { fg = colors.red, bg = colors.lualine_background },
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
    -- component_separators = { left = '', right = '' },
    -- section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = {
      {
        'filename',
        path = 1
      },
      {
        'diff',
        symbols = {
          added = icons.git.added,
          modified = icons.git.modified,
          removed = icons.git.removed,
        }
      },
      {
        "diagnostics",
        symbols = {
          error = icons.diagnostics.Error,
          warn = icons.diagnostics.Warn,
          info = icons.diagnostics.Info,
          hint = icons.diagnostics.Hint,
        },
      },
    },
    lualine_x = {
      'encoding',
      'fileformat',
      'filetype'
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
