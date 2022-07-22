local map = require("core.utils").map

-- Toggle windows
map("n", "<leader><tab>", ":NvimTreeToggle <CR>")
map("n", "<leader>t", ":ToggleTerm <CR>")

-- Move lines in normal/visual mode
map("n", "<A-j>", ":move +1 <CR>")
map("n", "<A-k>", ":move -2 <CR>")
map("v", "<A-j>", "xp`[V`]")
map("v", "<A-k>", "xkP`[V`]")

-- Resize splits
map("n", "<C-j>", ":resize -5 <CR>")
map("n", "<C-h>", ":vertical resize -5 <CR>")
map("n", "<C-l>", ":vertical resize +5 <CR>")
map("n", "<C-k>", ":resize +5 <CR>")

-- Telescope
map("n", "<leader>ff", ":Telescope find_files hidden=true <CR>")
map("n", "<leader>fg", ":Telescope live_grep <CR>")

-- Tabs
map("n", "<leader>p", ":BufferPick <CR>")
map("n", "<leader>c", ":BufferClose <CR>")

-- Move to windows
map("n", "<leader>w", ":lua require('nvim-window').pick() <CR>")

-- Git diff
map("n", "<leader>gg", ":DiffviewOpen <CR>")
map("n", "<leader>gc", ":DiffviewClose <CR>")
map("n", "<leader>gt", ":DiffviewToggleFiles <CR>") -- TODO: Change this mapping in diffview plugin config
map("n", "<leader>gr", ":DiffviewRefresh <CR>")

-- Misc
map("n", "<esc>", ":noh <CR>")
map("t", "<esc>", [[<C-\><C-n>]])
