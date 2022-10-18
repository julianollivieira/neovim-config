vim.api.nvim_set_keymap("n", "<leader><tab>", ":Telescope file_browser<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>w", ":lua require('nvim-window').pick()<CR>", { noremap = true })
