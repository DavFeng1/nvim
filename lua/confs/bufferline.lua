local present, bufferline = pcall(require, "bufferline")

if not present then
	return
end


bufferline.setup {
	options = {
		close_command = "bd | bp",
		numbers = "none",
		left_mouse_command = "bd | bp",
		diagnostics = "nvim_lsp",
		color_icons = true,
		separator_style = 'thick',
		left_trunc_marker = " ",
     	right_trunc_marker = " ",
		close_icon = '',
		themable = true,
		offsets = { { filetype = "NvimTree", text = "", text_align = "left", padding = 0 } },
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_close_icon = true,
		show_tab_indicators = true,
	}
}

