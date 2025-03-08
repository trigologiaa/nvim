  -----------------
  -- Colorscheme --
  -----------------

return {
  {
    -- Dark theme with relaxing and no-saturated colors
    "dgox16/oldworld.nvim",
    enabled = false,
    priority = 1000,
    opts = {
      variant = "oled"
    }
  },
  {
    -- A clean, dark and light Neovim theme written in Lua, with support for LSP, Tree-sitter and lots of plugins
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false,
    priority = 1000,
    opts = {}
  }
}
