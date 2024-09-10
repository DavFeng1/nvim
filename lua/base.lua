vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  -- Disable underline, it's very annoying
  underline = false,
  virtual_text = false,
  -- Enable virtual text, override spacing to 4
  -- virtual_text = {spacing = 4},
  -- Use a function to dynamically turn signs off
  -- and on, using buffer local variables
  signs = true,
  update_in_insert = false,
})

vim.wo.wrap = true
-- Folding
vim.opt.foldmethod = "indent"
vim.opt.foldminlines = 1
vim.opt.foldlevelstart = 99

-- transparent background
vim.o.pumblend = 10;

-- Case insensitive search
vim.opt.ignorecase = true

-- Dont conitnue comments on next line after enter
vim.cmd([[autocmd FileType * set formatoptions-=cro]])

-- Set syntax to shell for envrc
vim.cmd([[autocmd BufNewFile,BufRead *.envrc set syntax=sh]])

function _G.customFoldText()
  local line = vim.fn.getline(vim.v.foldstart)
  local line_count = vim.v.foldend - vim.v.foldstart + 1
  return " ⚡ " .. " ... " .. line_count .. " lines"
end

vim.opt.foldtext = "v:lua.customFoldText()"

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.backspace = "indent,eol,start"
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cursorline = true

-- Tabs and spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Chars
vim.opt.encoding = "utf-8"
-- vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"

-- " Note the space after the /
vim.opt.fillchars = { eob = " " }
-- vim.cmd([[
--    set fillchars+=eob:\
--    set fillchars+=fold:\
-- ]])

vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 10
vim.opt.laststatus = 3

-- Left padding
vim.opt.numberwidth = 1

-- Set sign column always show
vim.opt.signcolumn = "yes:2"

vim.opt.cmdheight = 1

vim.opt.timeoutlen = 500
vim.opt.mouse = "nvi"

vim.opt.winbar = "%{%v:lua.require('winbar').eval()%}"

-- minimap
-- vim.g.minimap_width = 10
-- vim.g.minimap_auto_start = 1
-- vim.g.minimap_auto_start_win_enter = 1
