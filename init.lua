-- Modules + Setup
require "plugins"

-- Configs
require "conf.cmp"

-- setup lsp Installer before lspconfig
require "conf.nvim-lsp-installer"
require "conf.lspconfig"

require "conf.nvim-tree"
require "conf.nvim-treesitter"
require "conf.toggleterm"

-- Visaul related
require "conf.indent-blankline"
require "conf.bufferline"
require "conf.lualine"

-- Vim scripts
vim.cmd('source ~/.config/nvim/base.vim')
vim.cmd('source ~/.config/nvim/binds.vim')

