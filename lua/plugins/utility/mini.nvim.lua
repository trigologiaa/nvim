-- Module of mini.nvim to add out of the box animations for common built-in actions (cursor movement, scroll, resize, window open/close)

return {
  "echasnovski/mini.nvim",
  version = false,
  lazy = false,
  config = function()
    require("mini.animate").setup({resize = {enable = false}, open = {enable = false}, close = {enable = false}, scroll = {enable = false}})
  end
}