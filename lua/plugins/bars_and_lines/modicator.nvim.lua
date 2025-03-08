-- Cursor line number mode indicator. Changes the CursorLineNr highlight based on Vim mode

return {
  "mawkler/modicator.nvim",
  dependencies = {
    "folke/tokyonight.nvim"
  },
  event = "BufRead",
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