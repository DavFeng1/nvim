local present, telescope = pcall(require, "telescope")

if not present then
	return
end

local actions = require "telescope.actions"

telescope.setup {
    defaults = {
        path_display = { "truncate" },
        prompt_prefix = "🔍  ",
        selection_caret = "  ",
        entry_prefix = "   ",
        sorting_strategy = "ascending",
        file_ignore_patterns = { "node_modules", "package-lock.json", ".git" },
        layout_strategy = 'vertical',
        layout_config = {
            horizontal = {
                prompt_position = "top",
            },
            vertical = {
                prompt_position = "top",
            },
            width = 115,
            height = 30,
            preview_height = 10,
            preview_cutoff = 1,
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
        find_files = {
            hidden = true,
        },
        live_grep = {
            shorten_path = true,
        },
    },
    extensions = {
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
        }
  },
}

telescope.load_extension('fzf')
telescope.load_extension('file_browser')

