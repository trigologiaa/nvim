-- Clipboard manager Neovim plugin with telescope integration

return {
  "AckslD/nvim-neoclip.lua",
  dependencies = {
    "nvim-telescope/telescope.nvim"
  },
  config = function()
    require('neoclip').setup()
  end
}