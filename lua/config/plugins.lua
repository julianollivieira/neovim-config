require("nvim-window").setup({})		-- Easy window jumping
require('nvim-autopairs').setup({})		-- Autopairs
require('Comment').setup()				-- Commenting
require('todo-comments').setup({})		-- Highlight TODO comments

-- Telescope
require("telescope").setup({
	extensions = {
		file_browser = {}
	}
})
require("telescope").load_extension("file_browser")

-- Treesitter + autotag
require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "php", "rust", "javascript", "html", "phpdoc" },
	highlight = { enable = true },
	indent = { enable = true },
	autotag = { enable = true }
})

-- Illuminate
require('illuminate').configure({
	provider = {
		'lsp',
		'treesitter',
		'regex',
	},
	delay = 0
})

-- Status line
local error_from_hl = vim.api.nvim_get_hl_by_name("DiagnosticError", true)
local warn_from_hl = vim.api.nvim_get_hl_by_name("DiagnosticWarn", true)
local hint_from_hl = vim.api.nvim_get_hl_by_name("DiagnosticHint", true)
local info_from_hl = vim.api.nvim_get_hl_by_name("DiagnosticInfo", true)

local colors = {
	error = string.format("%06x", error_from_hl.foreground),
	warn = string.format("%06x", warn_from_hl.foreground),
	hint = string.format("%06x", hint_from_hl.foreground),
	info = string.format("%06x", info_from_hl.foreground)
}

vim.api.nvim_set_hl(0, 'DiffAdd', { fg = '#333333', bg = '#54ff71' })
vim.api.nvim_set_hl(0, 'DiffDelete', { fg = '#333333', bg = '#ff5454' })
vim.api.nvim_set_hl(0, 'DiffChange', { fg = '#333333', bg = '#ffca69' })

require("lualine").setup({
	options = {
		globalstatus = true,
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
	},
	sections = {
		lualine_a = { 'mode' },
		lualine_b = {
			{
				'diff',
				diff_color = {
					added    = 'DiffAdd',    -- Changes the diff's added color
					modified = 'DiffChange', -- Changes the diff's modified color
					removed  = 'DiffDelete', -- Changes the diff's removed color you
				},
				symbols = {added = '+', modified = ' ~', removed = ' -'}, -- Changes the symbols used by the diff.
			},
			'branch'
		},
		lualine_c = { 'filename' },
		lualine_x = {},
		lualine_y = {
			{
				'diagnostics',
				source = { 'nvim' },
				sections = { 'error' },
				diagnostics_color = { error = { bg = colors.error, fg = "#333333" } },
			},
			{
				'diagnostics',
				source = { 'nvim' },
				sections = { 'warn' },
				diagnostics_color = { warn = { bg = colors.warn, fg = "#333333" } },
			},
			{
				'diagnostics',
				source = { 'nvim' },
				sections = { 'hint' },
				diagnostics_color = { hint = { bg = colors.hint, fg = "#333333" } },
			},
			{
				'diagnostics',
				source = { 'nvim' },
				sections = { 'info' },
				diagnostics_color = { info = { bg = colors.info, fg = "#333333" } },
			},
		},
		lualine_z = { 'location' }
	}
})

require('colorizer').setup()
require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.stylua,
		require("null-ls").builtins.formatting.deno_fmt,
        require("null-ls").builtins.diagnostics.eslint,
        require("null-ls").builtins.completion.spell,
    },
})
