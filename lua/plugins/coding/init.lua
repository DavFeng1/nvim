local telescope = require("plugins.coding.telescope")

return {
  telescope,
  {
    "stevearc/conform.nvim",
    lazy = false,
    cmd = "ConformInfo",
    opts = function()
      local plugin = require("lazy.core.config").plugins["conform.nvim"]
      ---@class ConformOpts
      local opts = {
        ---@type table<string, conform.FormatterUnit[]>
        formatters_by_ft = {
          -- cargo install stylua
          lua = { "stylua" },
          lua = { "eslint" },
        },
        format_on_save = {
          -- These options will be passed to conform.format()
          timeout_ms = 500,
          lsp_format = "fallback",
        },
      }
      return opts
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-context",
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
}
