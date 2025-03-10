-- Explain the regular expression under the cursor.

return {
  "bennypowers/nvim-regexplainer",
  enabled = true,
  lazy = false,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "MunifTanjim/nui.nvim"
  },
  config = function()
    require("regexplainer").setup()
  end
}