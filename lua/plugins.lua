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
    -- Conf management (unsused)
    "folke/neoconf.nvim", 
    cmd = "Neoconf" 
  },
  { "nvim-telescope/telescope.nvim" },
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
  -- auto completion
  {
    "hrsh7th/nvim-cmp",
    dependencies= {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-emoji",
      -- snippets
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets"
    },
  },
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
    -- TODO: from lazyvim
    -- opts_extend = { "ensure_installed" },
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
      },
    },
  },
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "luvit-meta/library", words = { "vim%.uv" } },
      },
    },
  },
  {
    "numToStr/Comment.nvim"
  },
  {
    'lewis6991/gitsigns.nvim'
  },
  { 'nvim-lualine/lualine.nvim'},
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  { 'goolord/alpha-nvim'},
  {
    'romgrk/barbar.nvim'
  },
  {
  'norcalli/nvim-colorizer.lua'
  }
}

require("lazy").setup(plugins)

require "confs.telescope"
require "confs.nvim-treesitter"
require "confs.neo-tree"

---- Configs
require "confs.web-devicons"

-- setup lsp Installer before lspconfig
require "confs.mason" -- Mason and mason-lspconfig are handled here
require "confs.lspconfig"
require "confs.lspsaga"


-- Autocomplete
require "confs.cmp"

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


