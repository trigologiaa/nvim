  ----------------
  -- Formatting --
  ----------------

return {
  {
    -- A format runner written in Lua.
    'mhartington/formatter.nvim',
    lazy = false
  },
  {
    -- A Lua implementation of nvim-hlchunk, contains more features, such as highlight {} chunk, indent line, space blank etc
    "shellRaining/hlchunk.nvim",
    event = {
      "BufReadPre",
      "BufNewFile"
    },
    config = function()
      require("hlchunk").setup({})
    end
  }
}