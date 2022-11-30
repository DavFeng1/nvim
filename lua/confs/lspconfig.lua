local present, lspconfig = pcall(require, "lspconfig")

require("neodev").setup({
})

if not present then
   return
end

local on_attach = function(client, bufnr)
  client.server_capabilities.document_formatting = true
end

local lsp_flags = {
  debounce_text_changes = 100,
}

lspconfig.tsserver.setup {
	on_attach = on_attach,
	flags = lsp_flags
}

lspconfig.sumneko_lua.setup({
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace"
      }
    }
  }
})

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

lspconfig.eslint.setup {
  on_attach = on_attach,
  flags = lsp_flags,
  settings = {
    codeActionsOnSave = {
      enable = true,
      mode = 'all',
    }
  },
}

lspconfig.jsonls.setup {
  on_attach = on_attach,
  flags = lsp_flags,
  settings = {
    json = {
      schemas = {
        {
          fileMatch = {"package.json"},
          url = "https://json.schemastore.org/package.json"
        },
        {
          fileMatch = {"tsconfig*.json"},
          url = "https://json.schemastore.org/tsconfig.json"
        },
      }
    }
  }
}

