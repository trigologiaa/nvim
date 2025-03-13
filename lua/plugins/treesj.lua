-- Splitting/joining blocks of code like arrays, hashes, statements, objects, dictionaries, etc

return {
  "Wansmer/treesj",
  enabled = true,
  keys = {
    "<space>m",
    "<space>j",
    "<space>s",
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter"
  },
  config = function()
    require("treesj").setup({})
  end
}