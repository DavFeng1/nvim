local base_colors = {
  black = "#616161",
  blue = "#4b6ac6",
  cyan = "#d0d1fa",
  green = "#4b9030",
  light_green = "#e4f6d4",
  magenta = "#7a3e9d",
  red = "#aa3732",
  light_white = "#ffffff",
  white = "#f1f1f1",
  yellow = "#935f32",
  background_light = "#ffffff",
  background = "#f5f5f5",
  background_dark = "#ececec",
  foreground = "#c7c7c7",
  selection = "#cadeb9",
  brown = "#453326",
  -- auxilliery colors --> remove
  grey = "#a1aab4",
  line = "#e1e1e1",
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
  white = base_colors.magenta,
  grey = base_colors.grey,
  line = base_colors.line,
  line_nr = base_colors.grey,
  dark_green = base_colors.dark_green,
  orange = base_colors.orange,
  dark_blue = base_colors.dark_blue,
  dark_purple = base_colors.dark_purple,
  yellow = base_colors.yellow,
  pink = base_colors.pink,
  pmenu_bg = base_colors.background_light,

  --  text
  text_primary = base_colors.magenta,
  text_hightlight = "#333333",

  -- Component specific colors
  pmenu_sel_bg = base_colors.selection,
  statusline_bg = base_colors.background2,
  folder_bg = "#86a5ff",
  cursor_line_background = base_colors.light_green,
  cursor_line_frontground = base_colors.line,
  git_signs_add = "#487e02",
  git_signs_blame = "#cad5bf",
  cmp_background = base_colors.background2,
  telescope_background = base_colors.background_dark,
  noice_background = base_colors.background_dark,
  lualine_background = "#705697",
  lualine_background_dark = "#4e3c69",
  lualine_mode_background = "#4e3c69",
  lualine_normal_foreground = base_colors.white,
  lualine_insert_foreground = base_colors.dark_green,
  lualine_branch = base_colors.white,
  lualine_lsp_foreground = base_colors.white,
  lualine_progress_foreground = base_colors.white,
  lualine_location_foreground = base_colors.white,
  lualine_filetype_foreground = base_colors.white,
  lualine_diff_add = base_colors.white,
  lualine_diff_change = base_colors.white,
  lualine_diff_delete = base_colors.white,
  barbar_background = base_colors.background,
  barbar_background_inactive = base_colors.background_light,
  barbar_background_current = base_colors.background,
  barbar_current_index = "#705697",
  barbar_inactive_index = "#c4b7d8",
  which_key_background = base_colors.background_dark,
  diagnostics_error = "#f14c4c",
  ibl_line = base_colors.line,
  ibl_scope = base_colors.line,
  scrollview = "#bbbbbb",
  -- Neo Tree
  neo_tree_background = base_colors.background,
  neo_tree_modified = "#e2a974",
  neo_tree_root_background = "#1a304d",
  neo_tree_winbar_background = "#1a304d",
  -- CMP
  cmp_text = base_colors.black,
  winbar_background = base_colors.background,
  keyword = base_colors.blue,
  keyword_import_typescript = base_colors.blue,
  keyword_coroutine_typescript = base_colors.blue,
  type = base_colors.magenta,
  variable = base_colors.magenta,
  variable_member = base_colors.magenta,
  property = base_colors.red,
  string = base_colors.green,
  func = "#aa3732",
  operator = "#777777",
  bracket = "#b16286",
  special = base_colors.magenta,
  delimiter = base_colors.magenta,
  match_paren_background = "#dfe6dd",
  variable_builtin = "#9c5d27",
  constant = "#9c5d27",
  comment = base_colors.green,
  copilot_completion = base_colors.grey,
  diagnostic_unnecessary = base_colors.grey,
  --
  barbar_current = "#8ec07c",
  search = "#f0dae3"
}


return M
