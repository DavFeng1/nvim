require("nvim-tree").setup({
   hijack_cursor = true,
   view = {
      hide_root_folder = true,
	  adaptive_size = true,
   },
   actions = {
      open_file = {
			resize_window = true,
      },
   },
   renderer = {
      icons = {
		 git_placement = "after",
         glyphs = {
            default = "",
            symlink = "",
            folder = {
               default = "",
               empty = "",
               empty_open = "",
               open = "",
               symlink = "",
               symlink_open = "",
               arrow_open = "",
               arrow_closed = "",
            },
            git = {
               unstaged = "✗",
               staged = "✓",
               unmerged = "",
               renamed = "➜",
               untracked = "★",
               deleted = "",
               ignored = "◌",
            },
         },
      },
   },
})

