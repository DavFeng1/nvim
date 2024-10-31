local telescope = require "plugins.coding.telescope"
local neotree = require "plugins.coding.neo-tree"
local conform = require "plugins.coding.conform"
local lean = require "plugins.coding.lean"

return {
  telescope,
  conform,
  neotree,
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  {
    'numToStr/Comment.nvim',
    opts = {}
  },
  lean,
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  }
}
