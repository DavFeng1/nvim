local notify = require("plugins.ui.notify")
local alpha = require "plugins.ui.alpha"

return {
  notify,
  alpha,
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {

    }
  },
  { "lewis6991/gitsigns.nvim" },
  { "nvim-lualine/lualine.nvim" },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  { "goolord/alpha-nvim" },
  { "romgrk/barbar.nvim" },
  { "norcalli/nvim-colorizer.lua" },
  { "wfxr/minimap.vim" },
}
