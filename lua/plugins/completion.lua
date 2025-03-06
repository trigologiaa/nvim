  ----------------
  -- Completion --
  ----------------

return {
  {
    -- Fully featured Lua replacement for GitHub/copilot.vim
    "zbirenbaum/copilot.lua",
    opts = {
      filetypes = {
        filetypes = {
          yaml = false,
          markdown = false,
          help = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ["."] = false
        }
      }
    }
  },
  {
    -- A completion plugin written in Lua
    "hrsh7th/nvim-cmp",
    dependencies = "Snikimonkd/cmp-go-pkgs",
    config = function()
        local cmp = require("cmp")
        cmp.setup({sources = {{name = "go_pkgs"}}, matching = {disallow_symbol_nonprefix_matching = false}})
    end
  }
}
