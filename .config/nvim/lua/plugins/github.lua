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
    -- use snacks instead of fzf-lua while there is an
    -- error with https://github.com/pwntester/octo.nvim/issues/1147
    picker = "fzf-lua",
    use_local_fs = true
  },
  keys = {
    {
      "<leader>gP",
      "<CMD>Octo pr list<CR>",
      desc = "List All PRs",
    },
    {
      "<leader>gp",
      "<CMD>Octo search is:pr is:open user-review-requested:@me<CR>",
      desc = "List PRs Awaiting Review"
    },
    {
      "<leader>go",
      "<CMD>Octo actions<CR>",
      desc = "List Octo actions"
    },
  }
}
