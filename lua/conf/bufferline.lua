require("bufferline").setup {
	options = {
		close_command = "bd | bp",
		left_mouse_command = "bd | bp",
		diagnostics = "nvim_lsp",
		color_icons = true,
		separator_style = 'thin',
		left_trunc_marker = " ",
     	right_trunc_marker = " ",
		themable = true,
		offsets = {
			{
				filetype = "NvimTree", 
				text = "Explorer",
				highlight = "Directory",
				text_align = "center"
			}
		},
	}
}


