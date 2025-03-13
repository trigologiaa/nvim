-- Add fancy sub-cursor to signcolumn to show your scroll or jump direction

return {
  "gen740/SmoothCursor.nvim",
  config = function()
    require("smoothcursor").setup()
  end
}