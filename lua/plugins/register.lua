  --------------
  -- Register --
  --------------

return {
  {
    -- Clipboard manager Neovim plugin with telescope integration
    "AckslD/nvim-neoclip.lua",
    lazy = false,
    dependencies = "nvim-telescope/telescope.nvim",
    config = function()
      require('neoclip').setup()
    end
  }
}