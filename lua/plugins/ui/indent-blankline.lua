local set_ibl = require "theme.integrations.indent-blankline"
local config_ibl = function()
  local ibl_present, ibl = pcall(require, 'ibl')
  if not ibl_present then
    return
  end

  ibl.setup({
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
  })
  set_ibl()
end

return config_ibl
