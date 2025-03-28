-- Distraction-free coding

return {
  "folke/zen-mode.nvim",
  enabled = true,
  cmd = "ZenMode",
  opts = {
    plugins = {
      gitsigns = true,
      tmux = true,
      kitty = {
        enabled = false,
        font = "+2"
      },
      twilight = {
        enabled = true
      }
    }
  }
}