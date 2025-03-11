-- Unofficial TailwindCSS tooling

return {
  "luckasRanarison/tailwind-tools.nvim",
  lazy = false,
  name = "tailwind-tools",
  build = ":UpdateRemotePlugins",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
    "neovim/nvim-lspconfig"
  },
  opts = {
    -- 
  }
}