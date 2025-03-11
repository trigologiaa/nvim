-- Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim

return {
  "williamboman/mason-lspconfig.nvim",
  lazy = false,
  config = function()
    require("mason-lspconfig").setup({ensure_installed = {"lua_ls", "clangd", "gopls", "pyright", "jdtls"}})
  end
}