--------------------
-- Bars and Lines --
--------------------

return {
  {
    -- Highlight the word under the cursor
    "sontungexpt/stcursorword",
    lazy = false,
    config = true,
  },
  {
    -- Cursor line number mode indicator. Changes the CursorLineNr highlight based on Vim mode
    "mawkler/modicator.nvim",
    event = "ModeChanged",
    opts = {
      show_warnings = false,
      highlights = { defaults = { bold = true } },
    },
    dependencies = "folke/tokyonight.nvim",
    init = function()
      vim.o.cursorline = true
      vim.o.number = true
      vim.o.termguicolors = true
    end,
  },
  {
    -- A snazzy buffer line built using Lua
    "akinsho/bufferline.nvim",
    enabled = false,
  },
}
