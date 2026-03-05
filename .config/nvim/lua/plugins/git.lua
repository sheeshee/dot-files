return {
  "lewis6991/gitsigns.nvim",
  version = "*",
  opts = {},
  config = function(_, opts)
    require("gitsigns").setup(opts)
    vim.keymap.set("n", "]h", ":Gitsigns next_hunk<CR>", { desc = "Next hunk" })
    vim.keymap.set("n", "[h", ":Gitsigns prev_hunk<CR>", { desc = "Previous hunk" })
    vim.keymap.set("n", "<leader>gs", ":Gitsigns stage_hunk<CR>", { desc = "Stage hunk" })
    vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", { desc = "Reset hunk" })
    vim.keymap.set("v", "<leader>gs", ":Gitsigns stage_hunk<CR>", { desc = "Stage selected lines" })
    vim.keymap.set("v", "<leader>gr", ":Gitsigns reset_hunk<CR>", { desc = "Reset selected lines" })
    vim.keymap.set("n", "<leader>gu", ":Gitsigns undo_stage_hunk<CR>", { desc = "Undo stage hunk" })
    vim.keymap.set("n", "<leader>gS", ":Gitsigns stage_buffer<CR>", { desc = "Stage buffer" })
    vim.keymap.set("n", "<leader>gR", ":Gitsigns reset_buffer<CR>", { desc = "Reset buffer" })
    vim.keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>", { desc = "Blame line" })
    vim.keymap.set("n", "<leader>gB", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle inline blame" })
    vim.keymap.set("n", "<leader>gd", ":Gitsigns diffthis<CR>", { desc = "Diff this" })
    vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", { desc = "Preview hunk" })
  end,
}
