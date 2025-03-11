-- Lua version of the Phpactor Vim plugin to take advantage of the latest Neovim features

return {
  "gbprod/phpactor.nvim",
  ft = "php",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "neovim/nvim-lspconfig"
  },
  opts = {
    -- 
  }
}