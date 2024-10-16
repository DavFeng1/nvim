local get_colors = require "theme.colors"

return function()
  local colors = get_colors()

  -- Menu
  vim.api.nvim_set_hl(0, "NotifyBackground", { bg = colors.telescope_background })
end
