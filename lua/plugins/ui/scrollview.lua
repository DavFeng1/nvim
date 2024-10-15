local colors = require 'theme.colors'

vim.api.nvim_set_hl(0, "ScrollView", { bg = colors.scrollview })

return { "dstein64/nvim-scrollview" }
