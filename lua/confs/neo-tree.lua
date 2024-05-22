local status_ok, neo_tree = pcall(require, "neo-tree")
if not status_ok then
  return
end


neo_tree.setup ({
  popup_border_style = "single",
  add_blank_line_at_top = false,
	close_if_last_window = true,
	default_component_configs = {
    container = {
      enable_character_fade = false,
      width = "100%",
      right_padding = 1,
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
        folder_closed = "",
        folder_open = "",
        folder_empty = "ﰊ",
        -- default = "*",
        -- highlight = "NeoTreeFileIcon"
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
		follow_current_file = {
      enabled = true
    },
		filtered_items = {
			visible = true
		},
		use_libuv_file_watcher = true,
	},
	event_handlers = {
        -- {
        --     event = "neo_tree_window_after_close",
        --     handler = function()
        --         require'bufferline.state'.set_offset(0)
        --     end,
        -- },
        -- {
        --     event = "neo_tree_buffer_enter",
        --     handler = function()
        --         require'bufferline.state'.set_offset(33, '')
        --     end,
        -- }
	},
	source_selector = {
		winbar = true,
    statusline = false
	},
  window = {
      position = "float", -- left, right, top, bottom, float, current
      width = 100,
      height = 30,
  },
})

