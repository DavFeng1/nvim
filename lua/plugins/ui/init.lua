local alpha = require "plugins.ui.alpha"
local indent_blankline = require "plugins.ui.indent-blankline"
local barbar = require "plugins.ui.barbar"
local noice = require "plugins.ui.noice"
local gitsigns = require "plugins.ui.gitsigns"

return {
  noice,
  alpha,
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {}
  },
  gitsigns,
  { "nvim-lualine/lualine.nvim" },
  { "goolord/alpha-nvim" },
  barbar,
  indent_blankline,
  { "norcalli/nvim-colorizer.lua" },
}
