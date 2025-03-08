-- Cursor line number mode indicator. Changes the CursorLineNr highlight based on Vim mode

return {
  "mawkler/modicator.nvim",
  enabled = true,
  event = "BufRead",
  dependencies = {
    "folke/tokyonight.nvim"
  },
  opts = {
    show_warnings = false,
    highlights = {
      defaults = {
        bold = true,
        italic = false
      },
      use_cursorline_background = false
    },
    integration = {
      lualine = {
        enabled = true,
        mode_section = nil,
        highlight = "bg"
      }
    }
  }
}