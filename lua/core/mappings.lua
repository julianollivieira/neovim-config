local map = require("core.utils").map

map("n", "<leader><tab>", ":NvimTreeToggle <CR>")
map("n", "<leader>t", ":ToggleTerm <CR>")
map("t", "<esc>", [[<C-\><C-n>]])
