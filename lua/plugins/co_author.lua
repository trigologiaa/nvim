-- Quickly add co-authors to commits

return {
  "2kabhishek/co-author.nvim",
  dependencies = {
      "stevearc/dressing.nvim",
      "nvim-telescope/telescope.nvim"
  },
  cmd = {
    "CoAuthor"
  }
}