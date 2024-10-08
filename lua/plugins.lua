-- lazy vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

local coding_plugins = require("plugins.coding.init")
local lsp_plugins = require("plugins.lsp.init")
local ui_plugins = require("plugins.ui.init")

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
  ui_plugins,
  coding_plugins,
  lsp_plugins,
}

require("lazy").setup(plugins)

-- setup lsp Installer before lspconfig
require("confs.lspconfig")

-- Debugger
require("confs.nvim-dap")
require("confs.dap-ui")

-- 	-- Fuzzy search
--   use 'nvim-lua/plenary.nvim'
--
-- 	-- Theme
-- 	use 'base16-project/base16-vim'
--
--   -- Debugging
--   use "mfussenegger/nvim-dap"
--   use "mxsdev/nvim-dap-vscode-js"
--   use {
--       "microsoft/vscode-js-debug",
--       opt = true,
--       run = "npm install --no-save --legacy-peer-deps && npm run compile"
--   }
--   use "rcarriga/nvim-dap-ui"
--
--   -- Latex
--   use 'lervag/vimtex'
--
-- end)
