-- LSP configuration
local ok, lspconfig = pcall(require, "lspconfig")
if not ok then
  return
end

local ok, masonLSPConfig = pcall(require, "mason-lspconfig")
if not ok then
  return
end

-- install servers and tools
require('pluggins/plugins/LSP/mason')
local setups = require("pluggins/plugins/LSP/setups")

masonLSPConfig.setup_handlers({
	function (server_name)
		lspconfig[server_name].setup(setups[server_name]())
	end
})
