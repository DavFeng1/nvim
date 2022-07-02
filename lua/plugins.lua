-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
 	-- Packer can manage itself
  	use 'wbthomason/packer.nvim'

	-- Terminal Mode
	use 'akinsho/toggleterm.nvim'

	-- File Explorer
	use "kyazdani42/nvim-tree.lua"
	use 'kyazdani42/nvim-web-devicons'

	-- Fuzzy search
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'

	-- Buffer + Tabs
	use 'akinsho/bufferline.nvim'

	--LSP
	use 'williamboman/nvim-lsp-installer'
	use 'neovim/nvim-lspconfig'

	-- Indent line indicators
	use 'lukas-reineke/indent-blankline.nvim'

	-- Status line
	use 'nvim-lualine/lualine.nvim'

	-- Tree Sitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ":TSUpdate",
	}
	use 'nvim-treesitter/playground'

	-- Snippets
	use "L3MON4D3/LuaSnip" --snippet engine
	use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

	-- Autocomplete
	use "hrsh7th/nvim-cmp" -- The completion plugin
	use "hrsh7th/cmp-buffer" -- buffer completions
	use "hrsh7th/cmp-path" -- path completions
	use "hrsh7th/cmp-cmdline" -- cmdline completions

	-- Integration
	use "hrsh7th/cmp-nvim-lsp"
	use "saadparwaiz1/cmp_luasnip" -- snippet completions

	-- Whichkey
	use 'folke/which-key.nvim'

	-- Theme
	use 'base16-project/base16-vim'

	-- Comment toggling
	use 'numToStr/Comment.nvim'

	-- Git signs
	use 'lewis6991/gitsigns.nvim'

	-- Auto pairs
	use 'windwp/nvim-autopairs'

	-- Dashboard
	use 'goolord/alpha-nvim'
end)

--- Initialize all plugins
---- Configs
require "confs.cmp"

-- setup lsp Installer before lspconfig
require "confs.nvim-lsp-installer"
require "confs.lspconfig"
require "confs.telescope"
require "confs.nvim-tree"
require "confs.nvim-treesitter"
require "confs.toggleterm"

--- Editor functionality
require "confs.nvim-autopairs"

-- UI
require "confs.indent-blankline"
require "confs.bufferline"
require "confs.lualine"
require "confs.which-key"
require "confs.comment"
require "confs.gitsigns"

require "confs.alpha-nvim"


