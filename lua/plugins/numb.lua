-- Peek lines in a non-obtrusive way.

return {
  "nacro90/numb.nvim",
  enabled = true,
  config = function()
    require("numb").setup()
  end
}