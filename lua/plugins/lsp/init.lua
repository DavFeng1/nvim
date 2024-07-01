local colors = require('theme.colors')

return {
  {
    "neovim/nvim-lspconfig",
    -- event = "LazyFile", TODO
    dependencies = {
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
  },
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        --See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "luvit-meta/library", words = { "vim%.uv" } },
      },
    },
  },
  -- auto completion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-emoji",
    },
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      table.insert(opts.sources, {
        name = "lazydev",
        group_index = 0, -- set group index to 0 to skip loading LuaLS completions
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
    -- TODO: from lazyvim
    -- opts_extend = { "ensure_installed" },
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
      },
    },
  },
  {
    "folke/ts-comments.nvim",
    opts = {},
    event = "VeryLazy",
    enabled = vim.fn.has("nvim-0.10.0") == 1,
  },
  {
    'nvimdev/lspsaga.nvim',
    config = function()
      require('lspsaga').setup({
        error_sign = '',
        warn_sign = '',
        hint_sign = '',
        infor_sign = '',
        symbol_in_winbar = {
          enable = true,
        },
        ui = {
          -- Currently, only the round theme exists
          theme = "round",
          -- This option only works in Neovim 0.9
          title = true,
          -- Border type can be single, double, rounded, solid, shadow.
          border = "rounded",
          winblend = 0,
          expand = "",
          collapse = "",
          preview = " ",
          code_action = '',
          -- code_action = "💡",
          diagnostic = "🐞",
          incoming = " ",
          outgoing = " ",
          colors = {
            -- Normal background color for floating window
            normal_bg = colors.background1,
            -- Title background color
            title_bg = colors.red,
            red = colors.red,
            magenta = colors.pink,
            orange = colors.orange,
            yellow = colors.yellow,
            green = colors.green,
            cyan = colors.cyan,
            blue = colors.blue,
            purple = colors.purple,
            white = colors.white,
            black = colors.black,
          },
          kind = {},
          outline = {
            win_width = 100,
            win_position = 'right',
            auto_close = true,
            layout = 'normal',
            auto_preview = false,
            detail = true,
          },
        },
      })
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter', -- optional
      'nvim-tree/nvim-web-devicons',     -- optional
    }
  }
}
