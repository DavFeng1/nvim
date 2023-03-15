
vim.diagnostic.config({
   virtual_text = false,
})

vim.wo.wrap = true

-- Folding
vim.opt.foldmethod = 'indent'
vim.opt.foldminlines = 1
vim.opt.foldlevelstart = 99

function _G.customFoldText()
  -- local line = vim.fn.getline(vim.v.foldstart)
  local line_count = vim.v.foldend - vim.v.foldstart + 1
  return " ⚡ " .. " ... " .. line_count .. " lines"
end

vim.opt.foldtext = 'v:lua.customFoldText()'


vim.opt.termguicolors = true
vim.opt.backspace = 'indent,eol,start'
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cursorline = true

-- Tabs and spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Chars

vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"

-- " Note the space after the /
vim.cmd[[
    set fillchars+=eob:\ 
    set fillchars+=fold:\ 
]]

-- vim.cmd [[
--   autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll
-- ]]

vim.opt.scrolloff = 20
vim.opt.laststatus = 3

-- Left padding
vim.opt.numberwidth = 1

-- Set sign column always show
vim.opt.signcolumn='yes:2'

vim.opt.cmdheight=1

vim.opt.timeoutlen=500
vim.opt.mouse='nvi'

vim.opt.winbar = "%{%v:lua.require('winbar').eval()%}"


