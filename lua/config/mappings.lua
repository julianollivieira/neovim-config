vim.api.nvim_set_keymap("n", "<leader>w", ":lua require('nvim-window').pick()<CR>", { noremap = true })

-- Telescope
vim.api.nvim_set_keymap("n", "<leader><tab>", ":Telescope file_browser<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files hidden=true<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true })
