-- A tool for CSS unit conversions

return {
  "cjodo/convert.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim"
  },
  keys = {
    {"<leader>cn", "<cmd>ConvertFindNext<CR>", desc = "Find next convertable unit"},
    {"<leader>cc", "<cmd>ConvertFindCurrent<CR>", desc = "Find convertable unit in current line"},
    {"<leader>ca", "<cmd>ConvertAll<CR>", mode = {"n", "v"}, desc = "Convert all of a specified unit"}
  }
}