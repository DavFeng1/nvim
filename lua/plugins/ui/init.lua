function setup_ui_plugins(colors)
  local alpha = require "plugins.ui.alpha"
  local barbar = require "plugins.ui.barbar"
  local config_noice = require "plugins.ui.noice"
  local gitsigns = require "plugins.ui.gitsigns"
  local colorizer = require "plugins.ui.colorizer"
  local config_lualine = require "plugins.ui.lualine"
  local config_ibl = require "plugins.ui.indent-blankline"
  local scrollview = require "plugins.ui.scrollview"
  local setup_devicons = require "plugins.ui.nvim-web-devicons"

  return {
    {
      'nvim-tree/nvim-web-devicons',
      config = setup_devicons
    },
    {

      "folke/noice.nvim",
      event = "VeryLazy",
      config = config_noice,
      dependencies = {
        "MunifTanjim/nui.nvim",
        --   If not available, we use `mini` as the fallback
        -- "rcarriga/nvim-notify",
      }
    },
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
    {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
      config = config_ibl
    },
    colorizer,
    {
      "nvim-lualine/lualine.nvim",
      config = config_lualine
    },
    scrollview
  }
end

return setup_ui_plugins
