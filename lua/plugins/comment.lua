-- Smart and Powerful comment plugin

return {
  "numToStr/Comment.nvim",
  enabled = true,
  opts = {
    config = function()
      require("Comment").setup()
    end
  }
}