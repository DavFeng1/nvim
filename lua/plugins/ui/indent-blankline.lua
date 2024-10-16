local get_colors = require "theme.colors"
local set_ibl = require "theme.integrations.indent-blankline"
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = function()
    set_ibl()

    return {
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
    }
  end

}
