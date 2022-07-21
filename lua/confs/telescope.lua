local present, telescope = pcall(require, "telescope")

if not present then
	return
end

local actions = require "telescope.actions"

telescope.setup {
  defaults = {
    path_display = { "smart" },
	prompt_prefix = "  ",
    selection_caret = "  ",
	entry_prefix = "   ",
	sorting_strategy = "ascending",
	file_ignore_patterns = { "node_modules", ".git", "package-lock.json" },
	layout_config = {
		horizontal = {
			prompt_position = "top"
		},
		width = 135,
        height = 35,
		preview_width = 70,
	},
	color_devicons = true,
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    mappings = {
		i = {
			["<C-j>"] = actions.move_selection_next,
			["<C-k>"] = actions.move_selection_previous,
			["<C-c>"] = actions.close,
		},
	}
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  },
}
