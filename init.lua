vim.g.mapleader = " "			-- Set leader to <space>
vim.cmd.colorscheme "oxocarbon"	-- Set the colorscheme
vim.cmd.colorscheme "noctis"	-- Set the colorscheme
vim.cmd.set "mouse="			-- Disable the mouse
vim.cmd.set "number"			-- Enable line numbering
vim.cmd.set "relativenumber"	-- Enable relative line numbering
vim.cmd.set "tabstop=4"			-- Set number of spaces for a tab
vim.cmd.set "shiftwidth=4"		-- Set number of spaces for a line shift
vim.cmd.set "cursorline"		-- Highlight the line the cursor in on

require("config.packer")
require("config.mappings")
require("config.plugins")
require("config.lsp")

vim.api.nvim_command ":COQnow --shut-up"
