local present, lspconfig = pcall(require, "lspconfig")


if not present then
   return
end

lspconfig.tsserver.setup {}

lspconfig.sumneko_lua.setup {
	settings = {
		Lua = {
			diagnostics = {
				globals = {'vim'}
			}
		}
	}
}

lspconfig.vimls.setup {}
