-- Modules + Setup
require "plugins"
-- Configs
require "conf.cmp"

-- setup lsp Installer before lspconfig
require "conf.nvim-lsp-installer"
require "conf.lspconfig"
require "conf.telescope"
require "conf.nvim-tree"
require "conf.nvim-treesitter"
require "conf.toggleterm"
-- Visual related
require "conf.indent-blankline"
require "conf.bufferline"
require "conf.lualine"
require "conf.which-key"
require "conf.comment"

-- Vim scripts
vim.cmd('source ~/.config/nvim/base.vim')
vim.cmd('source ~/.config/nvim/binds.vim')
vim.cmd('source ~/.config/nvim/theme.vim')

