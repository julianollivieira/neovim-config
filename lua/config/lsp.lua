local lsp = require("lspconfig")
local coq = require("coq")

-- PHP
lsp.phpactor.setup(coq.lsp_ensure_capabilities({
	--
}))
