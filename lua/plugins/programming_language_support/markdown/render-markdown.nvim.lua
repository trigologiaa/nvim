-- Improve viewing markdown files directly

return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "echasnovski/mini.nvim"
  },
  opts = {
    heading = {
      enabled = true,
      sign = true,
      style = "full",
      icons = {"① ", "② ", "③ ", "④ ", "⑤ ", "⑥ "},
      left_pad = 1
    },
    bullet = {
      enabled = true,
      icons = {"●", "○", "◆", "◇"},
      right_pad = 1,
      highlight = "render-markdownBullet"
    }
  }
}