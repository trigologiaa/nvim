-- Automatically updates nvim-web-devicons colors based on your current colorscheme

return {
  "rachartier/tiny-devicons-auto-colors.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  lazy = false,
  config = function()
      require('tiny-devicons-auto-colors').setup()
  end
}