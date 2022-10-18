require("nvim-window").setup({})

-- Status line
require("lualine").setup({
	options = {
		globalstatus = true,
	},
})

-- Telescope
require("telescope").setup({
	extensions = {
		file_browser = {}
	}
})
require("telescope").load_extension("file_browser")

-- Treesitter
require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "php", "rust" },
	highlight = { enable = true },
	indent = { enable = true },
})
