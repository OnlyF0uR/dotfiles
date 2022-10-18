local Obj = {}

Obj.on_attach = function(client, bufnr)
	-- ...
end

-- Capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
	return
end

Obj.capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

return Obj
