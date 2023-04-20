-- LSP configuration
local ok, mason = pcall(require, "mason")
if not ok then
  return
end

local ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not ok then
  return
end

local ok, mason_tool_installer = pcall(require, "mason-tool-installer")
if not ok then
  return
end

mason.setup()

mason_lspconfig.setup({
	ensure_installed = require('pluggins/plugins/LSP/servers'),
})

mason_tool_installer.setup({
	ensure_installed = require('pluggins/plugins/LSP/tools'),
})
