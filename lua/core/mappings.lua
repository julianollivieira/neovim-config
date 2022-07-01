local map = require("core.utils").map

map("n", "<leader><tab>", ":NvimTreeToggle <CR>")
map("n", "<leader>t", ":ToggleTerm <CR>")
map("t", "<esc>", [[<C-\><C-n>]])
map("n", "<C-k>", ":move -2 <CR>")
map("n", "<C-j>", ":move +1 <CR>")
map("v", "<C-j>", "xkP`[V`]")
map("v", "<C-k>", "xp`[V`]")
