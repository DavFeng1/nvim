local present, lspsaga = pcall(require, "lspsaga")
local colors = require('theme.colors')

if not present then return end


lspsaga.setup {
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
    border = "single",
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
    kind = {
    },
  },
  dependencies = {
     'nvim-tree/nvim-web-devicons'
  }
}

