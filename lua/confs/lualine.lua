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
    b = { fg = colors.red, bg = colors.background2 },
    c = { fg = colors.red, bg = colors.background2 },
    x = { fg = colors.light_white, bg = colors.background2 },
    y = { fg = colors.red, bg = colors.background2 },
    z = { fg = colors.red, bg = colors.background2 },
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

local config = {
  options = {
    icons_enabled = true,
    theme = custom_theme,
    -- component_separators = { left = '', right = '' },
    -- section_separators = { left = '', right = '' },
    component_separators = { left = ' ', right = ' ' },
    section_separators = { left = ' ', right = ' ' },
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = { { 'mode', color = { fg = colors.red, bg = colors.background2 } } },
    lualine_b = { { 'branch', color = { fg = colors.purple } },
      {
        'filetype',
        colored = true,            -- Displays filetype icon in color if set to true
        icon_only = false,         -- Display only an icon for filetype
        icon = { align = 'left' }, -- Display filetype icon on the right hand side
        color = { fg = colors.white }
      }
    },
    lualine_c = {
      {
        'diff',
        symbols = {
          added = icons.git.added,
          modified = icons.git.modified,
          removed = icons.git.removed,
        }
      },
    },
    lualine_x = {
      {
        "diagnostics",
        symbols = {
          error = icons.diagnostics.Error,
          warn = icons.diagnostics.Warn,
          info = icons.diagnostics.Info,
          hint = icons.diagnostics.Hint,
        },
      },
      {
        -- Lsp server name .
        function()
          local msg = 'No Active Lsp'
          -- local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
          local buf_ft = vim.api.nvim_get_option_value('filetype', { buf = 0 })
          local clients = vim.lsp.get_clients()
          if next(clients) == nil then
            return msg
          end
          for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
              return client.name
            end
          end
          return msg
        end,
        icon = ' ',
        color = { fg = colors.green },
      }
    },
    lualine_y = { 'location' },
    lualine_z = { 'progress' },
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

lualine.setup(config)
