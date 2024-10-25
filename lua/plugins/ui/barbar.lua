local config_barbar = function()
  local barbar_present, barbar = pcall(require, 'barbar')
  if not barbar_present then
    return
  end

  barbar.setup {
    icons = {
      filetype = {
        custom_colors = false,
        enabled = true
      },
      separator_at_end = false
    }
  }
end

return config_barbar
