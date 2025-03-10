-- Smart and Powerful comment plugin

return {
  "numToStr/Comment.nvim",
  enabled = true,
  lazy = false,
  opts = {
    config = function()
      require("Comment").setup()
    end
  }
}