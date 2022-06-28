-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  	-- Packer can manage itself
  	use 'wbthomason/packer.nvim'
	-- Terminal
	use 'akinsho/toggleterm.nvim'
	-- Tree
	use "kyazdani42/nvim-tree.lua"
	use 'kyazdani42/nvim-web-devicons'
	-- Telescope
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'

	-- Bufferline
	use 'akinsho/bufferline.nvim'

	--LSP - config + installer
	use 'williamboman/nvim-lsp-installer'
	use 'neovim/nvim-lspconfig'

	-- Indent line indicators
	use 'lukas-reineke/indent-blankline.nvim'

	-- Status line
	use 'nvim-lualine/lualine.nvim'

	-- Tree sitter highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ":TSUpdate",
	}

	-- Autocomplete
	use "hrsh7th/nvim-cmp" -- The completion plugin
	use "hrsh7th/cmp-buffer" -- buffer completions
	use "hrsh7th/cmp-path" -- path completions
	use "hrsh7th/cmp-cmdline" -- cmdline completions
	use "saadparwaiz1/cmp_luasnip" -- snippet completions
	use "hrsh7th/cmp-nvim-lsp"

	-- Snippets
	use "L3MON4D3/LuaSnip" --snippet engine
	use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
end)
