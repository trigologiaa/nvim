-- A clean, dark and light Neovim theme written in Lua, with support for LSP, Tree-sitter and lots of plugins

on_colors = function(colors)
  colors.hint = colors.orange
  colors.error = "#ff0000"
end

return {
  "folke/tokyonight.nvim",
  enabled = true,
  lazy = false,
  name = "tokyonight",
  priority = 1000,
  opts = {
    style = "storm",
    styles = {
      functions = {
        -- 
      }
    },
    on_colors = on_colors
  }
}