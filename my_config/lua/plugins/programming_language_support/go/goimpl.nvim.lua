-- Generate interface stubs for a type

return {
  "edolphin-ydf/goimpl.nvim",
  lazy = false,
  requires = {
    "nvim-lua/plenary.nvim",
    "nvim-lua/popup.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter"
  },
  config = function()
    require"telescope".load_extension"goimpl"
  end
}