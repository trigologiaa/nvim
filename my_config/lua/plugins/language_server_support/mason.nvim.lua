-- Portable package manager that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters

return {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
}