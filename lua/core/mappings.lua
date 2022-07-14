local map = require("core.utils").map

map("n", "<leader><tab>", ":NvimTreeToggle <CR>")
map("n", "<leader>t", ":ToggleTerm <CR>")
map("t", "<esc>", [[<C-\><C-n>]])
map("n", "<C-j>", ":move +1 <CR>")
map("n", "<C-k>", ":move -2 <CR>")
map("v", "<C-j>", "xp`[V`]")
map("v", "<C-k>", "xkP`[V`]")
map("n", "<esc>", ":noh <CR>")
map("n", "<leader>ff", ":Telescope find_files hidden=true <CR>")
map("n", "<leader>fg", ":Telescope live_grep <CR>")
map("n", "<leader>p", ":BufferPick <CR>")
map("n", "<leader>c", ":BufferClose <CR>")
map("n", "<leader>w", ":lua require('nvim-window').pick() <CR>")
