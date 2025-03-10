-- Code outline sidebar powered by LSP

return {
  "hedyhli/outline.nvim",
  lazy = true,
  cmd = {
    "Outline",
    "OutlineOpen",
  },
  keys = {
    {"<leader>cs", "<cmd>Outline<CR>", desc = "Toggle outline" },
  },
  opts = {},
}