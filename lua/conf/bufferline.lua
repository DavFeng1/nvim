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
		offsets = { { filetype = "NvimTree", text = "Explorer", text_align = "left", padding = 1 } },
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_close_icon = true,
		show_tab_indicators = true,
	}
}


