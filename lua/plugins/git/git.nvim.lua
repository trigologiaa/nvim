-- Simple clone of the plugin vim-fugitive which is written in Lua

return {
  "dinhhuy258/git.nvim",
  event = "BufReadPre",
  opts = {
    keymaps = {
      blame = "<Leader>gb",
      quit_blame = "q",
      blame_commit = "<CR>",
      quit_blame_commit = "q",
      browse = "<Leader>go",
      open_pull_request = "<Leader>gp",
      create_pull_request = "<Leader>gn",
      diff = "<Leader>gd",
      diff_close = "<Leader>gD",
      revert = "<Leader>gr",
      revert_file = "<Leader>gR"
    }
  }
}