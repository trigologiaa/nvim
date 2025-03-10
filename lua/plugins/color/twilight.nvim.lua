-- Dim inactive portions of the code you're editing using Tree-sitter

return {
  "folke/twilight.nvim",
  enabled = true,
  lazy = false,
  opts = {
    dimming = {
      alpha = 0.25,
      color = {
        "Normal",
        "#ffffff"
      },
      term_bg = "#000000",
      inactive = false
    },
    context = 10,
    treesitter = true,
    expand = {
      "function",
      "method",
      "table",
      "if_statement"
    },
    exclude = {
      -- 
    }
  }
}