-- A completion plugin written in Lua

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "Snikimonkd/cmp-go-pkgs"
  },
  config = function()
      local cmp = require("cmp")
      cmp.setup({sources = {{name = "go_pkgs"}}, matching = {disallow_symbol_nonprefix_matching = false}})
  end
}