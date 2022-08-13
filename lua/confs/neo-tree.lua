local status_ok, neo_tree = pcall(require, "neo-tree")
if not status_ok then
  return
end


neo_tree.setup ({
	close_if_last_window = false,
	default_component_configs = {
        container = {
        	enable_character_fade = true
        },
		indent = {
			indent_size = 2,
			padding = 1, -- extra padding on left hand side
			-- indent guides
			with_markers = true,
			indent_marker = "│",
			last_indent_marker = "└",
			highlight = "NeoTreeIndentMarker",
			-- expander config, needed for nesting files
			with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
			expander_collapsed = "",
			expander_expanded = "",
			expander_highlight = "NeoTreeExpander",
		},
        icon = {
        	folder_closed = "〉",
            folder_open = "﹀",
            folder_empty = "ﰊ",
            default = "*",
            highlight = "NeoTreeFileIcon"
        },
        modified = {
            symbol = "[+]",
            highlight = "NeoTreeModified",
        },
        name = {
            trailing_slash = false,
            use_git_status_colors = true,
            highlight = "NeoTreeFileName",
        },
        git_status = {
            symbols = {
				-- Change type
				added     = "✚",
				modified  = "",
				deleted   = "✖",-- this can only be used in the git_status source
				renamed   = "",-- this can only be used in the git_status source
				-- Status type
				untracked = "",
				ignored   = "",
				unstaged  = "",
				staged    = "",
				conflict  = "",
            }
        },
    },
	filesystem = {
		follow_current_file = true,
		filtered_items = {
			visible = true
		},
		use_libuv_file_watcher = true,
	},
	event_handlers = {},
	source_selector = {
		winbar = false,
		statusline = false,
	}
})

