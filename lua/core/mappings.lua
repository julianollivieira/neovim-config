local map = require("core.utils").map

map("n", "<C-b>", ":NvimTreeToggle <CR>")
map("n", "<C-t>", ":ToggleTerm <CR>")
map("t", "<esc>", [[<C-\><C-n>]])
