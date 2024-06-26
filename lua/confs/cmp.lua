local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

local kind_icons = {
  Namespace = "",
  Text = "",
  Method = " ",
  Function = "󰊕",
  Constructor = " ",
  Field = '',
  Variable = " ",
  Class = "",
  Interface = " ",
  Module = " ",
  Property = "",
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

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<S-k>"] = cmp.mapping.scroll_docs(-1),
    ["<S-j>"] = cmp.mapping.scroll_docs(1),
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
  }),
  formatting = {
    fields = {
      "abbr",
      "kind",
      -- "menu"
    },
    format = function(entry, vim_item)
      vim_item.kind = string.format("   %s %s  ", kind_icons[vim_item.kind], vim_item.kind)
      -- custom source name
      -- vim_item.menu = "   "
      --     .. ({
      --       nvim_lsp = "[LSP] ",
      --       buffer = "[BUFFER] ",
      --       path = "[PATH] ",
      --     })[entry.source.name]
      return vim_item
    end,
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  window = {
    completion = {
      -- border = border("CmpBorder"),
      border = false,
      winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
      side_padding = 2,
    },
    documentation = {
      -- border = border("CmpDocBorder"),
      border = false,
      winhighlight = "Normal:CmpDocPmenu",
    },
  },
  experimental = {
    ghost_text = false,
    -- ghost_text = {
    -- 	hl_group = "CmpGhostText",
    -- },
    native_menu = false,
  },
})
