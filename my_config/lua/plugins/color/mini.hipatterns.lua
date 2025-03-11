-- Module of mini.nvim to highlight patterns in text with configurable highlighters

group = function(_, match)
  local utils = require("config.utils.utils")
  local h, s, l = match:match("hsl%((%d+),? (%d+),? (%d+)%)")
  h, s, l = tonumber(h), tonumber(s), tonumber(l)
  local hex_color = utils.hslToHex(h, s, l)
  return MiniHipatterns.compute_hex_color_group(hex_color, "bg")
end

return {
  "echasnovski/mini.hipatterns",
  enabled = false,
  event = "BufReadPre",
  opts = {
    highlighters = {
      hsl_color = {
        pattern = "hsl%(%d+,? %d+,? %d+%)",
        group = group
      }
    },
    delay = {
      text_change = 200,
      scroll = 50
    }
  }
}