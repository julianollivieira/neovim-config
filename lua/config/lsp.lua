local lsp = require("lspconfig")
local coq = require("coq")

lsp.tsserver.setup(coq.lsp_ensure_capabilities({}))			-- JavaScript/TypeScript
lsp.rust_analyzer.setup(coq.lsp_ensure_capabilities({}))	-- Rust

-- Setup Psalm for PHP static analysis
lsp.psalm.setup(coq.lsp_ensure_capabilities({
	settings = {
		psalm = {
			disableAutoComplete = true,
		}
	}
}))

-- Setup Intelephense for PHP auto-completion
lsp.intelephense.setup(coq.lsp_ensure_capabilities({
  settings = {
    intelephense = {
      diagnostic = {
        enable = false,
        typeErrors = false,
        duplicateSymbols = false,
        argumentCount = false,
      }
    }
  }
}))
