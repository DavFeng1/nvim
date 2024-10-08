if vim.o.background == 'dark' then
  -- Base theme
  require "theme.integrations.base"
  -- Plugin integrations
  require "theme.integrations.neo-tree"
  require("theme.integrations.telescope")
  require("theme.integrations.barbar")
  require("theme.integrations.treesitter")
  require "theme.integrations.indent-blankline"
  require("theme.integrations.gitsigns")
  require("theme.integrations.which-key")
  require("theme.integrations.alpha")
  require("theme.integrations.notify")
  -- Custom
  require("theme.winbar")
  require "theme.integrations.cmp"
else
  print('light mode!')
  vim.api.nvim_set_hl(0, "Normal", { bg = "#405570" })
end
