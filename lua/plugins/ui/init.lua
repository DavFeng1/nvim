local notify = require("plugins.ui.notify")
local alpha = require "plugins.ui.alpha"
local indent_blankline = require "plugins.ui.indent-blankline"
local barbar = require "plugins.ui.barbar"
local noice = require "plugins.ui.noice"
-- local solarized_osaka = require "plugins.ui.solarized-osaka"

return {
  -- notify,
  noice,
  alpha,
  -- solarized_osaka,
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {}
  },
  { "lewis6991/gitsigns.nvim" },
  { "nvim-lualine/lualine.nvim" },
  { "goolord/alpha-nvim" },
  barbar,
  indent_blankline,
  { "norcalli/nvim-colorizer.lua" },
}
