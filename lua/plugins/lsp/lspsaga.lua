local colors = require('theme.colors')

return {
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup({
      symbol_in_winbar = { enable = true },
      ui = {
        -- Currently, only the round theme exists
        theme = "round",
        -- This option only works in Neovim 0.9
        title = true,
        -- Border type can be single, double, rounded, solid, shadow.
        border = nil,
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
