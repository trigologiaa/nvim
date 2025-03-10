-- Quickstart configurations for the LSP client

return {
  "neovim/nvim-lspconfig",
  events = "VeryLazy",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim"
  },
  opts = {
    inlay_hints = {
      enabled = false
    },
    servers = {
      angularls = {
        root_dir = function(fname)
          return require("lspconfig.util").root_pattern("angular.json", "project.json")(fname)
        end
      }
    }
  },
  config = function()
    local on_attach = function(_, bufnr)
      vim.keymap.set("n", "k", vim.lsp.buf.hover, {buffer = bufnr})
    end
    require("neodev").setup()
    require("lspconfig").lua_ls.setup({on_attach = on_attach, settings = {lua = {telemetry = {enable = false}, workspace = {checkThirdParty = false}}}})
  end
}