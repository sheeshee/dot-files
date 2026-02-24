-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local toggle_number = require("sheehy.linenumbers")
vim.keymap.set("n", "<leader>n", toggle_number, { desc = "Toggle line number display mode" })
vim.keymap.set("n", "<leader>w", ":set wrap!<CR>", { desc = "Toggle line wrap" })
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Open Explorer" })

-- From the Primeagen https://www.youtube.com/watch?v=w7i4amO_zaE
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- move selection up/down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "n", "nzzzv")  -- keep cursor centered when cycling through searches

-- Custom scroll mappings
vim.keymap.set("n", "<C-k>", "<C-Y>k", { desc = "Scroll up 1 line" })
vim.keymap.set("n", "<C-j>", "<C-E>j", { desc = "Scroll down 1 line" })

-- Adjust window width
vim.keymap.set("n", "<C-h>", "<C-w><", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-l>", "<C-w>>", { desc = "Increase window width" })
