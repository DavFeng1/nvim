local get_colors = require "theme.colors"

return function()
  local colors = get_colors()
  vim.api.nvim_set_hl(0, "WhichKey", { fg = colors.light_white, bg = colors.which_key_background })
  vim.api.nvim_set_hl(0, "WhichKeyFloat", { fg = colors.white, bg = colors.which_key_background })
  vim.api.nvim_set_hl(0, "WhichKeyNormal", { fg = colors.white, bg = colors.which_key_background })
  vim.api.nvim_set_hl(0, "WhichKeyDesc", { fg = colors.red, bg = colors.which_key_background })
end
