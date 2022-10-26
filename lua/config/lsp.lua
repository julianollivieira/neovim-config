local lsp = require("lspconfig")
local coq = require("coq")
local rt = require("rust-tools")

lsp.tsserver.setup(coq.lsp_ensure_capabilities({}))			-- JavaScript/TypeScript

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

-- Setup rust-analyzer using rust-tools
rt.setup({
	server = {
		on_attach = function(client, bufnr)
			vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })			-- Hover actions
			vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })	-- Code action groups
			if client.server_capabilities.documentFormattingProvider then
				vim.cmd [[augroup Format]]
				vim.cmd [[autocmd! * <buffer>]]
				vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()]]
				vim.cmd [[augroup END]]
			end
		end,
	},
})

-- Setup (sumneko) lua-language-server
lsp.sumneko_lua.setup(coq.lsp_ensure_capabilities({
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
}))
