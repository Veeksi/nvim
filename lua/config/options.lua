-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

-- Tabs / indent (keep yours)
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

-- Undo / swap (keep yours)
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search behavior (IDEAVim-like)
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false -- set true if you want matches highlighted after search

-- UI
vim.opt.termguicolors = true
vim.opt.scrolloff = 15 -- IDEAVim had 15
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"

-- Keymap timeout (IDEAVim had timeoutlen=300)
vim.opt.timeout = true
vim.opt.timeoutlen = 300

-- Clipboard (IDE-ish)
vim.g.clipboard = "osc52"
vim.opt.clipboard = "unnamedplus"

-- Misc (keep yours)
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
