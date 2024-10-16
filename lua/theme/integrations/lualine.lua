local get_colors = require "theme.colors"

return function()
  local colors = get_colors()

  vim.api.nvim_set_hl(0, "lualine_c_normal", { bg = colors.magenta })
end
