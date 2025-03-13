-- Make Go tests easy

return {
  "yanskun/gotests.nvim",
  ft = "go",
  config = function()
    require("gotests").setup()
  end
}
