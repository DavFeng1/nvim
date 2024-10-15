local alpha = require "plugins.ui.alpha"
local indent_blankline = require "plugins.ui.indent-blankline"
local barbar = require "plugins.ui.barbar"
local noice = require "plugins.ui.noice"
local gitsigns = require "plugins.ui.gitsigns"
local colorizer = require "plugins.ui.colorizer"
local lualine = require "plugins.ui.lualine"
local scrollview = require "plugins.ui.scrollview"

return {
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
  lualine,
  scrollview
}
