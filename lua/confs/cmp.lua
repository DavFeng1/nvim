local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  return
end

require("luasnip/loaders/from_vscode").lazy_load()

local kind_icons = {
   Namespace = "",
   Text = " ",
   Method = " ",
   Function = " ",
   Constructor = " ",
   Field = "ﰠ ",
   Variable = " ",
   Class = "ﴯ ",
   Interface = " ",
   Module = " ",
   Property = "ﰠ ",
   Unit = "塞 ",
   Value = " ",
   Enum = " ",
   Keyword = " ",
   Snippet = " ",
   Color = " ",
   File = " ",
   Reference = " ",
   Folder = " ",
   EnumMember = " ",
   Constant = " ",
   Struct = "פּ ",
   Event = " ",
   Operator = " ",
   TypeParameter = " ",
   Table = "",
   Object = " ",
   Tag = "",
   Array = "[]",
   Boolean = " ",
   Number = " ",
   Null = "ﳠ",
   String = " ",
   Calendar = "",
   Watch = " ",
   Package = "",
}

local function border(hl_name)
   return {
      { "┌", hl_name },
      { "─", hl_name },
      { "┐", hl_name },
      { "│", hl_name },
      { "┘", hl_name },
      { "─", hl_name },
      { "└", hl_name },
      { "│", hl_name },
   }
end

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = {
		["<S-k>"] = cmp.mapping.scroll_docs(-1),
		["<S-j>"] = cmp.mapping.scroll_docs(1),
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		-- Set `select` to `false` to only confirm explicitly selected items.
		["<CR>"] = cmp.mapping.confirm { select = false },
	},
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
  			vim_item.kind = string.format('%s %s  ', kind_icons[vim_item.kind], vim_item.kind)
			vim_item.menu = "   " .. ({
				nvim_lsp = "(lsp) ",
				luasnip = "(snippet) ",
				buffer = "(buffer) ",
				path = "(path) ",
			})[entry.source.name]
			return vim_item
		end,
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
  	},
	confirm_opts = {
		behavior = cmp.ConfirmBehavior.Replace,
		select = false,
	},
	window = {
		completion = {
			border = border "CmpBorder",
			winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
			side_padding = 2,
		},
		documentation = {
		  border = border "CmpDocBorder",
		  winhighlight = "Normal:CmpDocPmenu",
		},
	},
	experimental = {
		ghost_text = false,
		native_menu = false,
	},
}
