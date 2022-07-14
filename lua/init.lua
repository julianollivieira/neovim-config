vim.opt.termguicolors = true

vim.cmd('set relativenumber')
vim.cmd('set cursorline')
vim.cmd('set tabstop=4')
vim.cmd('set softtabstop=0 noexpandtab')
vim.cmd('set shiftwidth=4')
vim.g.mapleader = " "

require("plugins")

vim.cmd('colorscheme onedarkpro')
