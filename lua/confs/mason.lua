local mason_present, mason = pcall(require, "mason")
local mason_lspconfig_present, mason_lspconfig = pcall(require, "mason-lspconfig")


if not mason_present or not mason_lspconfig_present then
  return
end

mason.setup()
mason_lspconfig.setup()
