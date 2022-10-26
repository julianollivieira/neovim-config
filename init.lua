vim.g.mapleader = " "			-- Set leader to <space>
vim.cmd.colorscheme "oxocarbon"	-- Set the colorscheme
vim.cmd.colorscheme "noctis"	-- Set the colorscheme
vim.cmd.set "mouse="			-- Disable the mouse
vim.cmd.set "number"			-- Enable line numbering
vim.cmd.set "relativenumber"	-- Enable relative line numbering
vim.cmd.set "tabstop=4"			-- Set number of spaces for a tab
vim.cmd.set "shiftwidth=4"		-- Set number of spaces for a line shift
vim.cmd.set "cursorline"		-- Highlight the line the cursor in on
vim.cmd.set "termguicolors"		-- Enable termguicolors

require("config.packer")
require("config.mappings")
require("config.plugins")
require("config.lsp")

-- Configure folding with Treesitter
vim.cmd.set "foldmethod=expr"
vim.cmd.set "foldexpr=nvim_treesitter#foldexpr()"
-- vim.cmd.set "nofoldenable"
vim.api.nvim_command "autocmd BufWinEnter * silent! :%foldopen!"

-- Start COQ for autocompletion
vim.api.nvim_command ":COQnow --shut-up"