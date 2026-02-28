-- ~/.config/nvim/lua/config/keymaps.lua
local map = vim.keymap.set

vim.g.mapleader = " "

-- Select all
map("n", "<leader>a", "ggVG", { desc = "Select all" })

-- Redo on U
map("n", "U", "<C-r>", { desc = "Redo" })

-- Keep Q as format (like your old vimrc)
map("n", "Q", "gq", { desc = "Format operator" })

-- Centered scrolling + search
map("n", "<C-d>", "<C-d>zz", { desc = "Half page down (center)" })
map("n", "<C-u>", "<C-u>zz", { desc = "Half page up (center)" })
map("n", "n", "nzzzv", { desc = "Next search (center)" })
map("n", "N", "Nzzzv", { desc = "Prev search (center)" })

-- Clipboard yanks like IDEAVim
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("n", "<leader>Y", '"+Y', { desc = "Yank line to system clipboard" })

-- Paste from system clipboard (normal)
map("n", "<C-v>", '"+p', { desc = "Paste system clipboard" })

-- Paste in insert mode (Shift+Ctrl+V)
map("i", "<C-S-v>", "<C-r>+", { desc = "Paste system clipboard (insert)" })
map("v", "<C-S-v>", '"+p', { desc = "Paste system clipboard (visual)" })

-- Paste over selection without overwriting register
map("v", "<leader>p", '"_dP', { desc = "Paste (keep register)" })

-- Delete without yanking
map({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete (no yank)" })

-- Indent keeps selection
map("v", "<", "<gv", { desc = "Indent left (keep select)" })
map("v", ">", ">gv", { desc = "Indent right (keep select)" })

-- Move selected lines up/down (same as your ideavim)
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Reload config quickly
map("n", "<leader>src", ":source $MYVIMRC<CR>", { desc = "Source vimrc" })
