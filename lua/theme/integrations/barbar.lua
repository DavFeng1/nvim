local get_colors = require "theme.colors"

return function()
  local colors = get_colors()
  -- Offset
  vim.api.nvim_set_hl(0, "BufferOffset", { bg = colors.neo_tree_background, fg = colors.light_white })
  --  Current
  vim.api.nvim_set_hl(0, "BufferCurrent", { fg = colors.text_hightlight, bg = colors.background_light })
  vim.api.nvim_set_hl(0, "BufferCurrentIcon", { bg = colors.background_light })
  vim.api.nvim_set_hl(0, "BufferCurrentIndex", { fg = colors.text_hightlight, bg = colors.background_light })
  vim.api.nvim_set_hl(0, "BufferCurrentSign", { fg = colors.barbar_current, bg = colors.background_light })
  vim.api.nvim_set_hl(0, "BufferCurrentSignRight", { fg = colors.background, bg = colors.background_light })
  vim.api.nvim_set_hl(0, "BufferCurrentMod", { bg = colors.background_light })
  vim.api.nvim_set_hl(0, "BufferCurrentTarget", { fg = colors.text_highlight, bg = colors.background_light })
  -- Visible
  vim.api.nvim_set_hl(0, "BufferVisible", { fg = colors.text_primary, bg = colors.background1 })
  vim.api.nvim_set_hl(0, "BufferVisibleIcon", { bg = colors.background })
  vim.api.nvim_set_hl(0, "BufferVisibleIndex", { fg = colors.text_primary, bg = colors.background })
  vim.api.nvim_set_hl(0, "BufferVisibleSign", { fg = colors.background, bg = colors.background })
  vim.api.nvim_set_hl(0, "BufferVisibleMod", { fg = colors.text_highlight, bg = colors.background })
  vim.api.nvim_set_hl(0, "BufferVisibleTarget", { fg = colors.text_primary, bg = colors.background })
  -- Inactive
  vim.api.nvim_set_hl(0, "BufferInactive", { fg = colors.grey, bg = colors.barbar_background })
  vim.api.nvim_set_hl(0, "BufferInactiveIcon", { bg = colors.barbar_background })
  vim.api.nvim_set_hl(0, "BufferInactiveIndex", { fg = colors.text_primary, bg = colors.barbar_background })
  vim.api.nvim_set_hl(0, "BufferInactiveSign", { fg = colors.barbar_background, bg = colors.barbar_background })
  vim.api.nvim_set_hl(0, "BufferInactiveMod", { fg = colors.text_highlight, bg = colors.barbar_background })
  vim.api.nvim_set_hl(0, "BufferInactiveTarget", { fg = colors.text_primary, bg = colors.barbar_background })
  -- Fill
  vim.api.nvim_set_hl(0, "BufferTabpage", { bg = colors.barbar_background, fg = colors.barbar_background })
  vim.api.nvim_set_hl(0, "BufferTabpageFill", { bg = colors.barbar_background, fg = colors.barbar_background })
end
