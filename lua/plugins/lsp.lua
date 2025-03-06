---------
-- LSP --
---------

return {
  {
    -- Portable package manager that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    -- Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "gopls", "pyright", "jdtls" },
        automatic_installation = true,
      })
    end,
  },
  {
    -- Quickstart configurations for the LSP client
    "neovim/nvim-lspconfig",
    events = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "folke/neodev.nvim",
    },
    opts = {
      inlay_hints = {
        enabled = false,
      },
      servers = {
        angularls = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("angular.json", "project.json")(fname)
          end,
        },
      },
    },
    config = function()
      local on_attach = function(_, bufnr)
        vim.keymap.set("n", "k", vim.lsp.buf.hover, { buffer = bufnr })
      end
      require("neodev").setup()
      require("lspconfig").lua_ls.setup({
        on_attach = on_attach,
        settings = {
          lua = {
            telemetry = {
              enable = false,
            },
            workspace = {
              checkThirdParty = false,
            },
          },
        },
      })
    end,
  },
  {
    -- Previewing native LSP's goto definition calls in floating windows
    "rmagatti/goto-preview",
    event = "BufEnter",
    config = true,
    keys = {
      {
        "gpd",
        "<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
        noremap = true,
        desc = "goto preview definition",
      },
      {
        "gpD",
        "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>",
        noremap = true,
        desc = "goto preview declaration",
      },
      {
        "gpi",
        "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
        noremap = true,
        desc = "goto preview implementation",
      },
      {
        "gpy",
        "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
        noremap = true,
        desc = "goto preview type definition",
      },
      {
        "gpr",
        "<cmd>lua require('goto-preview').goto_preview_references()<CR>",
        noremap = true,
        desc = "goto preview references",
      },
      {
        "gP",
        "<cmd>lua require('goto-preview').close_all_win()<CR>",
        noremap = true,
        desc = "close all preview windows",
      },
    },
  },
  {
    -- A pretty diagnostics list to help you solve all the trouble your code is causing
    "folke/trouble.nvim",
    opts = {
      use_diagnostic_signs = true,
    },
    cmd = "Trouble",
    keys = {
      { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
      { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
      { "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)" },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      { "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
      { "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
    },
  },
  {
    -- Code outline sidebar powered by LSP
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = {
      "Outline",
      "OutlineOpen",
    },
    keys = {
      { "<leader>cs", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
    opts = {},
  },
  {
    -- Display LSP hover documentation in a side panel
    "amrbashir/nvim-docs-view",
    lazy = true,
    cmd = "DocsViewToggle",
    opts = {
      position = "right",
      width = 60,
    },
  },
  -- {
  -- For the moment I disabled this
  --   -- Extensions for the built-in LSP support for eclipse.jdt.ls
  --   "mfussenegger/nvim-jdtls",
  --   config = function()
  --     local config = {
  --       cmd = {"/home/gaston/.local/share/nvim/mason/bin/jdtls"},
  --       root_dir = vim.fs.dirname(vim.fs.find({"gradlew", ".git", "mvnw"}, {upward = true})[1])
  --     }
  --     require("jdtls").start_or_attach(config)
  --   end
  -- },
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.clang_format,
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.gofumpt,
          null_ls.builtins.formatting.goimports_reviser,
          null_ls.builtins.formatting.golines,
          null_ls.builtins.diagnostics.golangci_lint,
          null_ls.builtins.diagnostics.mypy,
          null_ls.builtins.diagnostics.pylint,
          null_ls.builtins.formatting.black,
          null_ls.builtins.formatting.isort,
        },
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}),
        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ timeout_ms = 5000, bufnr = bufnr })
              end,
            })
          end
        end,
      })
    end,
  },
}
