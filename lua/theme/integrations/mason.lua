local get_colors = "theme.colors"
local colors = get_colors()

vim.api.nvim_set_hl(0, "MasonNormal", { fg = colors.white, bg = colors.telescope_background })
