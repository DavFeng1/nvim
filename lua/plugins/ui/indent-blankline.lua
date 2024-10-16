local set_ibl = require "theme.integrations.indent-blankline"
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  config = function()
    require('ibl').setup({
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = { show_start = false, show_end = false },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "neo-tree",
          "lazy",
          "mason",
          "notify",
        }
      }
    })
    set_ibl()
  end

}
