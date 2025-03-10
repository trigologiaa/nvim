-- Browse and solve Exercism problems.

return {
  "2kabhishek/exercism.nvim",
  cmd = {
      "ExercismLanguages",
      "ExercismList",
      "ExercismSubmit",
      "ExercismTest"
  },
  keys = {
      "<leader>exa",
      "<leader>exl",
      "<leader>exs",
      "<leader>ext"
  },
  dependencies = {
      "2kabhishek/utils.nvim",
      "stevearc/dressing.nvim",
      "2kabhishek/termim.nvim"
  },
  opts = {
    -- 
  }
}