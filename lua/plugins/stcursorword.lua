-- Highlight the word under the cursor

return {
  "sontungexpt/stcursorword",
  enabled = true,
  event = "CursorMoved",
  opts = {
    max_word_length = 100,
    min_word_length = 2,
    excluded = {
      filetypes = {
        "TelescopePrompt"
      },
      buftypes = {
        -- 
      },
      patterns = {
        -- 
      }
    },
    highlight = {
      underline = true,
      fg = nil,
      bg = nil
    }
  }
}