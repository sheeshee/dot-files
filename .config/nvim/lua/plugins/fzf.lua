return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {

  },
  config = function(_, opts)
    require("fzf-lua").setup(opts)
    vim.keymap.set("n", "<leader>ff", ":FzfLua files<CR>", { desc = "Fuzzy find files" })
    vim.keymap.set("n", "<leader>fg", ":FzfLua grep<CR>", { desc = "Grep files" })
    vim.keymap.set("n", "<leader>fh", ":FzfLua history<CR>", { desc = "View history" })
    vim.keymap.set("n", "<leader>fc", ":FzfLua resume<CR>", { desc = "Open last finder window" })
    vim.keymap.set("n", "<leader>fs", ":FzfLua lsp_document_symbols<CR>", { desc = "View document symbols" })
    vim.keymap.set("n", "<leader>fb", ":FzfLua buffers<CR>", { desc = "View buffers" })
    vim.keymap.set("n", "<leader>fr", ":FzfLua lsp_references<CR>", { desc = "View references" })
    vim.keymap.set("n", "<leader>fj", ":FzfLua jumps<CR>", { desc = "View jumps" })
    vim.keymap.set("n", "<leader>f*", ":FzfLua grep_cword<CR>", { desc = "Grep word under cursor" })
  end,
}
