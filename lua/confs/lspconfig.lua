local present, lspconfig = pcall(require, "lspconfig")

local luadev = require("lua-dev").setup({
})

if not present then
   return
end

local on_attach = function(_, bufnr)

  local bufopts = { noremap=true, silent=true, buffer=bufnr }

  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)

end

local lsp_flags = {
  debounce_text_changes = 100,
}

lspconfig.tsserver.setup {
	on_attach = on_attach,
	flags = lsp_flags
}

lspconfig.sumneko_lua.setup(luadev)

lspconfig.vimls.setup {
	on_attach = on_attach,
	flags = lsp_flags,
}

lspconfig.pyright.setup {
	on_attach = on_attach,
	flags = lsp_flags,
}

lspconfig.rust_analyzer.setup {
	on_attach = on_attach,
	flags = lsp_flags,
}

