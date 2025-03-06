  --------------------
  -- Syntax Section --
  --------------------

return {
  {
    -- Neovim Tree-sitter configurations and abstraction layer
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    dependencies = "nvim-treesitter/nvim-treesitter-textobjects",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({auto_install = true, ensure_installed = {"c", "lua", "vim", "vimdoc", "go", "cpp"}, highlight = {enable = true}, indent = {enable = true}, textobjects = {select = {enable = true, lookahead = true, keymaps = {["af"] = "@function.outer", ["if"] = "@function.inner", ["ac"] = "@conditional.outer", ["ic"] = "@conditional.inner", ["al"] = "@loop.outer", ["il"] = "@loop.inner"}}}})
    end
  },
  {
    -- Location and syntax aware text objects which do what you mean
    "RRethy/nvim-treesitter-textsubjects",
    lazy = false
  }
}