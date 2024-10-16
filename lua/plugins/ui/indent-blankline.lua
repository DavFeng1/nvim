return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = function()
    local get_colors = require "theme.colors"
    local colors = get_colors()
    vim.api.nvim_set_hl(0, "IblIndent", { fg = colors.ibl_line })
    vim.api.nvim_set_hl(0, "IblWhitespace", { fg = colors.ibl_line })
    vim.api.nvim_set_hl(0, "IblScope", { fg = colors.ibl_scope })

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
