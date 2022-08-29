local base_colors = {
	background1 = "#001E27",
	background2 = "#02161b",
	background3 = "#000000",
	black = "#002831",
	blue = "#2176c7",
	cyan = "#259286",
	green = "#45908f",
	purple = "#e24d8e",
	red = "#d11c24",
	light_white = "#ffffff",
	white = "#eae3cb",
	grey = "#a1aab4",
	line = "#404f7d",
	dark_green = "#003748",
	orange = "#f34b00",
	dark_blue = "#178ec8",
	dark_purple = "#c678dd",
	yellow = "#a57706",
	pink = "#C678DD",
	lightbg = "#405570",
}

local M = {
	-- Base Colors
	background1 = base_colors.background1,
	background2 = base_colors.background2,
	black = base_colors.black,
	blue = base_colors.blue,
	cyan = base_colors.cyan,
	green = base_colors.green,
	purple = base_colors.purple,
	red = base_colors.red,
	light_white = base_colors.light_white,
	white = base_colors.white,
	grey = base_colors.grey,
	line = base_colors.line,
	dark_green = base_colors.dark_green,
	orange = base_colors.orange,
	dark_blue = base_colors.dark_blue,
	dark_purple = base_colors.dark_purple,
	yellow = base_colors.yellow,
	pink = base_colors.pink,
	lightbg = base_colors.lightbg,
	pmenu_bg = base_colors.background2,

	-- Component specific colors
	pmenu_sel_bg = base_colors.red,
	statusline_bg = "#15191e",
	folder_bg = "#86a5ff",
	cursor_line_background = "#003748",

	cmp_background = base_colors.background2,

	telescope_background = base_colors.background3,

	lualine_background = base_colors.background3,
	lualine_background2 = "#2a75a6",

	barbar_background = base_colors.background2,

	which_key_background = "#001126",

	git_signs_add = "#487e02",
	git_signs_blame = "#35577d",

	diagnostics_error = "#f14c4c",

	-- Neo Tree
	neo_tree_background = base_colors.background2,
	neo_tree_modified = "#e2a974",
	neo_tree_root_background = "#1a304d",
	neo_tree_winbar_background = "#1a304d",

	toggle_term_background = base_colors.background2,
	winbar_background = base_colors.background2,
}

return M
