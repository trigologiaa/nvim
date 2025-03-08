-- A plugin providing utils to work with colors (picker, conversion) inside Neovim

return {
  "max397574/colortils.nvim",
  cmd = "Colortils",
  config = function()
    require("colortils").setup()
  end
}