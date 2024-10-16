function setup_ui_plugins(colors)
  local alpha = require "plugins.ui.alpha"
  local indent_blankline = require "plugins.ui.indent-blankline"
  local barbar = require "plugins.ui.barbar"
  local noice = require "plugins.ui.noice"
  local gitsigns = require "plugins.ui.gitsigns"
  local colorizer = require "plugins.ui.colorizer"
  local config_lualine = require "plugins.ui.lualine"
  local scrollview = require "plugins.ui.scrollview"
  local nvim_web_devicons = require "plugins.ui.nvim-web-devicons"

  return {
    nvim_web_devicons,
    noice,
    alpha,
    {
      "folke/which-key.nvim",
      event = "VeryLazy",
      opts = {}
    },
    gitsigns,
    { "goolord/alpha-nvim" },
    { "echasnovski/mini.nvim", version = "*" },
    barbar,
    indent_blankline,
    colorizer,
    {
      "nvim-lualine/lualine.nvim",
      config = config_lualine
    },
    scrollview
  }
end

return setup_ui_plugins
