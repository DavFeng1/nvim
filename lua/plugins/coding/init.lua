local telescope = require "plugins.coding.telescope"
local neotree = require "plugins.coding.neo-tree"
local conform = require "plugins.coding.conform"
local lean = require "plugins.coding.lean"

return {
  telescope,
  conform,
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-context",
    },
  },
  neotree,
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
  {
    'numToStr/Comment.nvim',
    opts = {}
  },
  lean
}
