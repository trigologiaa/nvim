-- A Lua implementation of nvim-hlchunk, contains more features, such as highlight {} chunk, indent line, space blank etc

return {
  "shellRaining/hlchunk.nvim",
  event = {
    "BufReadPre",
    "BufNewFile"
  },
  config = function()
    require("hlchunk").setup({})
  end
}