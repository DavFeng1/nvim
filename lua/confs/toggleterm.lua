local status_ok, toggleterm = pcall(require, "toggleterm")

if not status_ok then
	return
end

toggleterm.setup({
	size = 15,
	-- open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "horizontal",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "TerminalBorder",
			background = "TerminalBackground",
		},
	},
})

local Terminal = require("toggleterm.terminal").Terminal
local python = Terminal:new({ cmd = "python3 -m bpython", hidden = true })
local node = Terminal:new({ cmd = "node", hidden = true })
local lua = Terminal:new({ cmd = "lua", hidden = true })

function _PYTHON_TOGGLE()
	python:toggle()
end

function _NODE_TOGGLE()
	node:toggle()
end

function _LUA_TOGGLE()
	lua:toggle()
end

