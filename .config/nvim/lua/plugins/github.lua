return {
  'pwntester/octo.nvim',
  version = "*",
  dependencies = {
    'nvim-lua/plenary.nvim',
    'ibhagwan/fzf-lua',
    'nvim-tree/nvim-web-devicons',
  },
  cmd = "Octo",
  opts = {
    picker = "fzf-lua",
    use_local_fs = true
  },
  keys = {
    {
      "<leader>gP",
      "<CMD>Octo pr list<CR>",
      desc = "List GitHub Pull Requests",
    }
  }
}
