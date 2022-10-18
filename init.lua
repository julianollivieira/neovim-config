vim.g.mapleader = " "			-- Set leader to <space>
vim.cmd.colorscheme "oxocarbon"		-- Set the colorscheme
vim.cmd.set "mouse="			-- Disable the mouse
vim.cmd.set "number"			-- Enable line numbering
vim.cmd.set "relativenumber"		-- Enable relative line numbering

require("config.packer")
require("config.mappings")
require("config.plugins")
require("config.lsp")
