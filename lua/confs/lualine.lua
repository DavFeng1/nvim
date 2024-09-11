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
  normal = { c = { fg = colors.red, bg = colors.background2 }, },
  insert = { c = { fg = colors.blue, bg = colors.lualine_background2 } },
  visual = { c = { fg = colors.pink, bg = colors.background2 } },
  replace = { c = { fg = colors.cyan, bg = colors.background2 } },
  inactive = { c = { fg = colors.grey, bg = colors.background2 }, },
}

local config = {
  options = {
    icons_enabled = true,
    theme = custom_theme,
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {
      {
        function()
          return '▊'
        end,
        color = { fg = colors.red }, -- Sets highlighting of component
        padding = { right = 1 },     -- We don't need space before this
      },
    },
    lualine_b = {},
    lualine_c = {
      { 'mode', },
      {
        'branch',
        color = { fg = colors.purple },
        padding = { left = 3 }
      },
      {
        'filetype',
        colored = true,            -- Displays filetype icon in color if set to true
        icon_only = false,         -- Display only an icon for filetype
        icon = { align = 'left' }, -- Display filetype icon on the right hand side
        color = { fg = colors.blue },
        padding = { left = 3 }
      },
      {
        'diff',
        symbols = {
          added = icons.git.added,
          modified = icons.git.modified,
          removed = icons.git.removed,
        },
        padding = { left = 3 }
      },
      {
        "diagnostics",
        symbols = {
          error = icons.diagnostics.Error,
          warn = icons.diagnostics.Warn,
          info = icons.diagnostics.Info,
          hint = icons.diagnostics.Hint,
        },
        padding = { left = 3 }
      },
    },
    lualine_x = {
      {
        -- Lsp server name .
        function()
          local msg = 'No Active Lsp'
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
        color = { fg = colors.blue },
      },
      {
        'location'
      },
      {
        'progress'
      }
    },
    lualine_y = {},
    lualine_z = {
      {
        function()
          return '▊'
        end,
        color = { fg = colors.red }, -- Sets highlighting of component
        padding = { left = 1 },      -- We don't need space before this
      },
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

lualine.setup(config)
