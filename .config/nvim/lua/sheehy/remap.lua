-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

toggle_number = require("sheehy.linenumbers")
vim.keymap.set("n", "<leader>n", toggle_number, { desc = "Toggle line number display mode" })
vim.keymap.set("n", "<leader>w", ":set wrap!<CR>", { desc = "Toggle line wrap" })
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Open Explorer" })
vim.keymap.set("n", "<leader>ff", ":FzfLua files<CR>", { desc = "Fuzzy find files" })
vim.keymap.set("n", "<leader>fg", ":FzfLua grep<CR>", { desc = "Grep files" })
vim.keymap.set("n", "<leader>fo", ":FzfLua oldfiles<CR>", { desc = "View oldfiles" })
vim.keymap.set("n", "<leader>fc", ":FzfLua resume<CR>", { desc = "Open last finder window" })
vim.keymap.set("n", "<leader>fs", ":FzfLua lsp_document_symbols<CR>", { desc = "View document symbols" })
vim.keymap.set("n", "<leader>fb", ":FzfLua buffers<CR>", { desc = "View buffers" })
vim.keymap.set("n", "<leader>fr", ":FzfLua lsp_references<CR>", { desc = "View references" })
vim.keymap.set("n", "<leader>fj", ":FzfLua jumps<CR>", { desc = "View jumps" })

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
