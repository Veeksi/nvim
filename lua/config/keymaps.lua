-- ~/.config/nvim/lua/config/keymaps.lua
local map = vim.keymap.set
vim.g.mapleader = " "

map("n", "<leader>a", "ggVG", { desc = "Select all" })
map("n", "U", "<C-r>", { desc = "Redo" })

map("n", "Q", "gq", { desc = "Format operator" })

map("n", "<C-d>", "<C-d>zz", { desc = "Half page down (center)" })
map("n", "<C-u>", "<C-u>zz", { desc = "Half page up (center)" })
map("n", "n", "nzzzv", { desc = "Next search (center)" })
map("n", "N", "Nzzzv", { desc = "Prev search (center)" })

map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("n", "<leader>Y", '"+Y', { desc = "Yank line to system clipboard" })

map("i", "<C-S-v>", "<C-r>+", { desc = "Paste system clipboard (insert)" })
map("v", "<C-S-v>", '"+p', { desc = "Paste system clipboard (visual)" })

map("v", "<leader>p", '"_dP', { desc = "Paste (keep register)" })
map({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete (no yank)" })

map("v", "<", "<gv", { desc = "Indent left (keep select)" })
map("v", ">", ">gv", { desc = "Indent right (keep select)" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

map("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Quickfix next" })
map("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Quickfix prev" })
map("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Loclist next" })
map("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Loclist prev" })

map("n", "<leader>src", "<cmd>Lazy reload<cr>", { desc = "Reload LazyVim" })
