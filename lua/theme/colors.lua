vim.o.background = 'light'
if vim.o.background == 'light' then
  local colors = require 'theme.themes.quietLight'
  return colors
end

local colors = require 'theme.themes.gruvbox'
return colors
