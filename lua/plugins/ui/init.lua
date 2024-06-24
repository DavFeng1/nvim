local notify = require("plugins.ui.notify")

return {
	notify,
	{ "folke/which-key.nvim" },
	{ "lewis6991/gitsigns.nvim" },
	{ "nvim-lualine/lualine.nvim" },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ "goolord/alpha-nvim" },
	{ "romgrk/barbar.nvim" },
	{ "norcalli/nvim-colorizer.lua" },
}
