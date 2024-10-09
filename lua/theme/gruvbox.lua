local base_colors = {
  black = "#616161",
  blue = "#afd4fa",
  cyan = "#d0d1fa",
  green = "#c3f884",
  magenta = "#f295f7",
  red = "#f08978",
  light_white = "#ffffff",
  white = "#f1f1f1",
  yellow = "#fefdc8",
  background = "#201f1f",
  background_light = "#2a2929",
  background_dark = "#171516",
  foreground = "#c7c7c7",
  selection = "#29302b",
  -- auxilliery colors --> remove
  grey = "#a1aab4",
  line = "#404f7d",
  dark_green = "#003748",
  orange = "#f34b00",
  dark_blue = "#178ec8",
  dark_purple = "#c678dd",
  pink = "#C678DD",
}

local M = {
  -- Base Colors
  black = base_colors.black,
  background = base_colors.background,
  background_dark = base_colors.background_dark,
  background_light = base_colors.background_light,
  selection = base_colors.selection,
  blue = base_colors.blue,
  cyan = base_colors.cyan,
  green = base_colors.green,
  purple = base_colors.magenta,
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
  pmenu_bg = base_colors.background2,

  -- Component specific colors
  pmenu_sel_bg = base_colors.red,
  statusline_bg = base_colors.background2,
  folder_bg = "#86a5ff",
  cursor_line_background = base_colors.background_light,

  cmp_background = base_colors.background2,

  telescope_background = base_colors.background_dark,

  lualine_background = base_colors.background2,
  lualine_background2 = "#2a75a6",

  barbar_background = base_colors.background,

  which_key_background = base_colors.background2,

  git_signs_add = "#487e02",
  git_signs_blame = "#35577d",

  diagnostics_error = "#f14c4c",

  -- Neo Tree
  neo_tree_background = base_colors.background_dark,
  neo_tree_modified = "#e2a974",
  neo_tree_root_background = "#1a304d",
  neo_tree_winbar_background = "#1a304d",

  winbar_background = base_colors.background,
  keyword = "#fb4935",
  type = "#fabd2f",
  variable = "#83a598",
  string = "#b8bb26",
  func = "#8ec07c",
  operator = "#fe8019",
  bracket = "#b16286",
  special = "#fabd2f",
  delimiter = "#8ec07c",
  --
  barbar_current = "#8ec07c",
}

return M
