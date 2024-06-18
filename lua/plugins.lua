-- lazy vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

local lspPlugins = require 'plugins.lsp.init'

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
  "folke/which-key.nvim",
  { 
    "folke/neoconf.nvim", 
    cmd = "Neoconf" 
  },
  "folke/neodev.nvim",
	"nvim-telescope/telescope.nvim",
  { 
    'nvim-telescope/telescope-fzf-native.nvim', 
    build = 'make' 
  },
	{
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  -- auto completion
  {
    "hrsh7th/nvim-cmp",
    dependencies= {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    }
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
  {
    "neovim/nvim-lspconfig",
    -- event = "LazyFile", TODO 
    dependencies = {
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
  },
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
    opts_extend = { "ensure_installed" },
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
      },
    },
  }
}

require("lazy").setup(plugins)

require "confs.telescope"
require "confs.nvim-treesitter"
require "confs.neo-tree"

---- Configs
require "confs.web-devicons"
require "confs.cmp"

-- setup lsp Installer before lspconfig
require "confs.mason" -- Mason and mason-lspconfig are handled here
require "confs.lspconfig"
require "confs.lspsaga"

-- Setup treesitter
require "confs.nvim-treesitter-context"

-- Debugger
require "confs.nvim-dap"
require "confs.dap-ui"

--- Editor functionality
require "confs.nvim-autopairs"

-- UI
require "confs.indent-blankline"
require "confs.barbar"
require "confs.lualine"
require "confs.which-key"
require "confs.comment"
require "confs.gitsigns"
require "confs.alpha-nvim"
require "confs.nvim-colorizer"


-- Remove legacy commands to neo-tree
vim.cmd( [[ let g:neo_tree_remove_lgacy_commands = 1]])

-- require('packer').startup(function(use)
--     -- Packer can manage itself
--     use 'wbthomason/packer.nvim'
--
-- 	-- Dev Icons
-- 	use 'kyazdani42/nvim-web-devicons'
--
-- 	-- Fuzzy search
--   use 'nvim-lua/plenary.nvim'
--
-- 	-- Buffer + Tabs
-- 	use {'romgrk/barbar.nvim',
-- 		-- requires = {'kyazdani42/nvim-web-devicons'}
-- 	}
--
-- 	--LSP
--   use "williamboman/mason.nvim"
--   use "williamboman/mason-lspconfig.nvim"
-- 	use 'neovim/nvim-lspconfig'
--
-- 	-- Indent line indicators
-- 	use {'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {}}
--
-- 	-- Status line
-- 	use 'nvim-lualine/lualine.nvim'
--
--
-- 	-- Snippets
-- 	use "L3MON4D3/LuaSnip" --snippet engine
-- 	use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
--
-- 	-- Autocomplete
-- 	use "hrsh7th/nvim-cmp" -- The completion plugin
-- 	use "hrsh7th/cmp-buffer" -- buffer completions
-- 	use "hrsh7th/cmp-path" -- path completions
-- 	use "hrsh7th/cmp-cmdline" -- cmdline completions
--
-- 	-- Integration
-- 	use "hrsh7th/cmp-nvim-lsp"
-- 	use "saadparwaiz1/cmp_luasnip" -- snippet completions
--
-- 	-- Whichkey
-- 	use 'folke/which-key.nvim'
--
-- 	-- Theme
-- 	use 'base16-project/base16-vim'
--
-- 	-- Comment toggling
-- 	use 'numToStr/Comment.nvim'
--
-- 	-- Git signs
-- 	use 'lewis6991/gitsigns.nvim'
--
-- 	-- Auto pairs
-- 	use 'windwp/nvim-autopairs'
--
-- 	-- Dashboard
-- 	use 'goolord/alpha-nvim'
--
-- 	-- Colorizer
-- 	use 'norcalli/nvim-colorizer.lua'
--
-- 	-- Lsp saga
-- 	use {'glepnir/lspsaga.nvim',
--     requires = {'kyazdani42/nvim-web-devicons'}
--   }
--
--
-- 	use 'folke/neodev.nvim'
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

--- Initialize all plugins

