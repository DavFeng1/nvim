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
