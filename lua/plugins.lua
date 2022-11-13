-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


-- Remove legacy commands to neo-tree
vim.cmd( [[ let g:neo_tree_remove_lgacy_commands = 1]])

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

	-- Terminal Mode
	use 'akinsho/toggleterm.nvim'

	-- File Explorer
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			-- "kyazdani42/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		}
	}

	-- Dev Icons
	use 'kyazdani42/nvim-web-devicons'

	-- Fuzzy search
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'nvim-telescope/telescope-file-browser.nvim'

	-- Buffer + Tabs
	use {'romgrk/barbar.nvim',
		-- requires = {'kyazdani42/nvim-web-devicons'}
	}

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
  use 'nvim-treesitter/nvim-treesitter-context'

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

	-- Colorizer
	use 'norcalli/nvim-colorizer.lua'

	-- Lsp saga
	use 'glepnir/lspsaga.nvim'

	use 'folke/neodev.nvim'

  -- Debugging
  use "mfussenegger/nvim-dap"
  use "rcarriga/nvim-dap-ui"
  use "mxsdev/nvim-dap-vscode-js"
  use {
      "microsoft/vscode-js-debug",
      opt = true,
      run = "npm install --legacy-peer-deps && npm run compile"
  }

end)

--- Initialize all plugins

---- Configs
require "confs.web-devicons"
require "confs.cmp"

-- setup lsp Installer before lspconfig
require "confs.nvim-lsp-installer"
require "confs.lspconfig"
require "confs.telescope"

-- Setup treesitter
require "confs.nvim-treesitter"
require "confs.nvim-treesitter-context"

-- Debugger
require "confs.nvim-dap"

-- Terminal
require "confs.toggleterm"

--- Editor functionality
require "confs.nvim-autopairs"

-- UI
require "confs.neo-tree"
require "confs.indent-blankline"
require "confs.barbar"
require "confs.lualine"
require "confs.which-key"
require "confs.comment"
require "confs.gitsigns"
require "confs.alpha-nvim"
require "confs.nvim-colorizer"
