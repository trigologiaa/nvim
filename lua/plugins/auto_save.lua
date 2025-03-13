-- Automatically saves your work as often as needed and as seldom as possible

return {
  "okuuva/auto-save.nvim",
  enabled = false,
  version = "*",
  cmd = "ASToggle",
  event = {
    "InsertLeave",
    "TextChanged"
  },
  opts = {
    -- 
  }
}