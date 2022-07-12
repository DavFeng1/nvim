local present, bufferline = pcall(require, "bufferline")

if not present then
	return
end


bufferline.setup {
	animation = true,
	clickable = true,
	icon_separator_active = '▎',
	icon_separator_inactive = '▎',
	icon_close_tab = '',
	icon_close_tab_modified = '●',
	icon_pinned = '車',
	maximum_padding = 1,
}

