local colors = require("theme.colors")

vim.api.nvim_set_hl(0, "DefinitionBorder", { fg = colors.red })
vim.api.nvim_set_hl(0, "Delimiter", { fg = colors.dark_blue })
vim.api.nvim_set_hl(0, "DiffAdd", { fg = colors.green })
vim.api.nvim_set_hl(0, "DiffChange", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = colors.red })
vim.api.nvim_set_hl(0, "FinderParam", { fg = colors.red, bg = colors.background1 })
vim.api.nvim_set_hl(0, "SignColumn", {})

vim.api.nvim_set_hl(0, "Error", { fg = colors.red, bg = colors.background1 })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = colors.red, bg = colors.background1 })
vim.api.nvim_set_hl(0, "Normal", { fg = colors.white })
vim.api.nvim_set_hl(0, "Folded", { bg = colors.background1 })
vim.api.nvim_set_hl(0, "Statement", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Search", { fg = colors.black, bg = colors.pink })
vim.api.nvim_set_hl(0, "Todo", { fg = colors.black, bg = colors.yellow })
vim.api.nvim_set_hl(0, "Folded", { fg = colors.grey })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { gui = nil })

-- Built in
vim.api.nvim_set_hl(0, "Type", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Special", { fg = colors.yellow })

-- Statusline
vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.green })

-- Cursor
vim.api.nvim_set_hl(0, "Cursor", { fg = colors.background1 })
vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.cursor_line_background })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.light_white })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.grey })

-- PMenu
vim.api.nvim_set_hl(0, "PMenu", { fg = colors.white, bg = colors.pmenu_bg })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.pmenu_bg, bg = colors.pmenu_sel_bg })
vim.api.nvim_set_hl(0, "PmenuSbar", { fg = colors.white, bg = colors.background2 })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.red })

vim.api.nvim_set_hl(0, "PreProc", { fg = colors.blue })
vim.api.nvim_set_hl(0, "Title", { fg = colors.dark_purple })

-- SPlit
vim.api.nvim_set_hl(0, "WinSeparator", { fg = colors.red })
vim.api.nvim_set_hl(0, "Visual", { bg = colors.lightbg })

-- Characters
vim.api.nvim_set_hl(0, "MatchParen", { fg = colors.black, bg = colors.blue })
vim.api.nvim_set_hl(0, "Directory", { fg = colors.blue })
vim.api.nvim_set_hl(0, "NonText", { fg = colors.grey })

-- Diagnostic
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = colors.dark_purple })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.diagnostics_error })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { fg = colors.diagnostics_error, underline = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { fg = colors.white })
