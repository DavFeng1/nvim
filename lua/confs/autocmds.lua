-- Don't auto change colorscheme
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  command = "silent!"
})
vim.api.nvim_create_autocmd("OptionSet", {
  pattern = "background",
  command = "silent!"
})

local set_custom_highlights = require "colorscheme"
-- Reapply custom highlights on background change without changing colorscheme
vim.api.nvim_create_autocmd("OptionSet", {
  pattern = "background",
  callback = set_custom_highlights
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
