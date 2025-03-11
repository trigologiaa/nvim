-- Provides explanation for RegExp.

return {
  "tomiis4/Hypersonic.nvim",
  enabled = true,
  lazy = false,
  event = "CmdlineEnter",
  cmd = "Hypersonic",
  config = function()
    require("hypersonic").setup({})
  end
}