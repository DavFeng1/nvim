local get_colors = require "theme.colors"

return function()
  local colors = get_colors()
  -- Offset
  vim.api.nvim_set_hl(0, "AlphaHeader", { fg = colors.red })
  vim.api.nvim_set_hl(0, "AlphaButtons", { fg = colors.red })
end
