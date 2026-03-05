-- how many lines to leave above/below cursor when scrolling through file
vim.opt.scrolloff = 3

-- save buffer when focus is lost or switching buffers
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave" }, {
  pattern = "*",
  command = "silent! wa",
})
