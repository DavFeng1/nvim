local present, lspconfig = pcall(require, "lspconfig")

require("neodev").setup({
})

if not present then
   return
end

local on_attach = function(client, bufnr)
  client.server_capabilities.document_formatting = true
  client.server_capabilities.semanticTokensProvider = nil
end

local lsp_flags = {
  debounce_text_changes = 100,
}

lspconfig.tsserver.setup {
	on_attach = on_attach,
	flags = lsp_flags
}
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

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
  flags = lsp_flags,
  on_attach = function(client)
    local group = vim.api.nvim_create_augroup("Eslint", {})
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = group,
      pattern = "<buffer>",
      command = "EslintFixAll",
      desc = "Run eslint when saving buffer.",
    })
  end,
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

lspconfig.taplo.setup {}


