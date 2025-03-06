-------------
-- Motions --
-------------

return {
  {
    -- Precognition uses virtual text and gutter signs to show available motions
    "tris203/precognition.nvim",
    lazy = false,
    opts = {},
  },
  {
    -- Add fancy sub-cursor to signcolumn to show your scroll or jump direction
    "gen740/SmoothCursor.nvim",
    config = function()
      require("smoothcursor").setup()
    end,
  },
  {
    -- Highlights cursor when it moves, changes windows and more
    "danilamihailov/beacon.nvim",
    lazy = false,
  },
  {
    -- Animate the cursor with a smear effect in all terminals
    "sphamba/smear-cursor.nvim",
    opts = {},
  },
}
