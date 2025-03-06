  ----------------------------
  -- Neovim Lua Development --
  ----------------------------

return {
  {
    -- A hackable & fancy vimdoc/help file viewer
    "OXY2DEV/helpview.nvim",
    lazy = false
  },
  {
    -- A plugin that properly configures LuaLS for editing your Neovim config by lazily updating your workspace libraries
    {
      "folke/lazydev.nvim",
      ft = "lua",
      opts = {
        library = {
          {
            path = "${3rd}/luv/library",
            words = {
              "vim%.uv"
            }
          }
        }
      }
    },
    {
      "hrsh7th/nvim-cmp",
      opts = function(_, opts)
        opts.sources = opts.sources or {}
        table.insert(opts.sources, {name = "lazydev", group_index = 0})
      end
    },
    {
      "saghen/blink.cmp",
      opts = {
        sources = {
          default = {
            "lazydev",
            "lsp",
            "path",
            "snippets",
            "buffer"
          },
          providers = {
            lazydev = {
              name = "LazyDev",
              module = "lazydev.integrations.blink",
              score_offset = 100
            }
          }
        }
      }
    }
  }
}