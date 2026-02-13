-- disable netrw in favour of nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- termguicolors strongly recommended for bufferline.nvim
vim.opt.termguicolors = true
-- lazy.vim recommends configuring settings before
-- loading lazy.vim
require("sheehy")
require("config.lazy")


