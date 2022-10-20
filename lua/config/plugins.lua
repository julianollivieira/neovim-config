require("nvim-window").setup({})		-- Easy window jumping
require('nvim-autopairs').setup({})		-- Autopairs

-- Telescope
require("telescope").setup({
	extensions = {
		file_browser = {}
	}
})
require("telescope").load_extension("file_browser")

-- Treesitter (and autotag)
require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "php", "rust", "javascript", "html", "phpdoc" },
	highlight = { enable = true },
	indent = { enable = true },
	autotag = { enable = true },
})

-- Status line
local error_from_hl = vim.api.nvim_get_hl_by_name("ErrorMsg", true)
local warn_from_hl = vim.api.nvim_get_hl_by_name("WarningMsg", true)
local colors = {
	error = string.format("%06x", error_from_hl.foreground),
	warn = string.format("%06x", warn_from_hl.foreground)
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
			'branch',
			{
				'diff',
				diff_color = {
					added    = 'DiffAdd',    -- Changes the diff's added color
					modified = 'DiffChange', -- Changes the diff's modified color
					removed  = 'DiffDelete', -- Changes the diff's removed color you
				},
				symbols = {added = '+', modified = ' ~', removed = ' -'}, -- Changes the symbols used by the diff.
			},
			{
				'diagnostics',
				source = { 'nvim' },
				sections = { 'error' },
				diagnostics_color = { error = { bg = colors.error, fg = "#ffffff" } },
			},
			{
				'diagnostics',
				source = { 'nvim' },
				sections = { 'warn' },
				diagnostics_color = { warn = { bg = colors.warn, fg = "#ffffff" } },
			},
			-- TODO: add info/hints?
		},
		lualine_c = { 'filename' },
		lualine_x = {},
		lualine_y = {},
		lualine_z = { 'location' }
	}
})

require('colorizer').setup()
