local config_lualine = require "plugins.ui.lualine"
local config_ibl = require "plugins.ui.indent-blankline"
local config_noice = require "plugins.ui.noice"

local function set_autocmds()
  -- Don't auto change colorscheme
  vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    command = "silent!"
  })
  vim.api.nvim_create_autocmd("OptionSet", {
    pattern = "background",
    command = "silent!"
  })


  -- Reapply custom highlights on background change without changing colorscheme
  vim.api.nvim_create_autocmd("OptionSet", {
    pattern = "background",
    callback = function()
      set_colorscheme()
      config_ibl()
      config_lualine()
      config_noice()
    end

  })

  -- Dont continue comments on next line after enter
  vim.cmd([[autocmd FileType * set formatoptions-=cro]])

  -- Set syntax to shell for envrc
  vim.cmd([[autocmd BufNewFile,BufRead *.envrc set syntax=sh]])

  vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
      vim.highlight.on_yank({
        higroup = 'Visual',
        timeout = 300,
      })
    end
  })
  -- Formatting
  vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])
end

return set_autocmds
