-- Neovim plugin that shows a popup with possible keybindings of the command you started typing

return {
  "folke/which-key.nvim",
  lazy = false,
  opts = {
    preset = "classic",
    win = {
      border = "single"
    }
  },
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  keys = {
    {"<leader>?", function() require("which-key").show({global = false}) end, desc = "Buffer Local Keymaps (which-key)"},
    {"<leader>o", group = "Obsidian"}
  }
}