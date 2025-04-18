return {
  "echasnovski/mini.starter",
  version = "*",
  config = function()
    require("mini.starter").setup({
      header = "You keep on learning and learning...",
      footer=  "...and pretty soon you learn something\nno has learned before",
  })
  end,
}

