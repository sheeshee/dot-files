-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

toggle_number = require('sheehy.linenumbers')
vim.keymap.set('n', '<leader>n', toggle_number, { desc = 'Toggle line number display mode' })
vim.keymap.set('n', '<leader>w', ':set wrap!<CR>', { desc = 'Toggle line wrap' })
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Open Explorer' })
vim.keymap.set('n', '<leader>ff', ':FzfLua files<CR>', { desc = 'Fuzzy find files' })
vim.keymap.set('n', '<leader>fg', ':FzfLua grep<CR>', { desc = 'Grep files' })
vim.keymap.set('n', '<leader>fo', ':FzfLua oldfiles<CR>', { desc = 'View oldfiles' })
vim.keymap.set('n', '<leader>fr', ':FzfLua registers<CR>', { desc = 'View registers' })
vim.keymap.set('n', '<leader>fs', ':FzfLua lsp_document_symbols<CR>', { desc = 'View document symbols' })

