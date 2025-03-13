-- Automatically updates nvim-web-devicons colors based on your current colorscheme

return {
  "rachartier/tiny-devicons-auto-colors.nvim",
  enabled = true,
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  opts = {
    factors = {
      lughtness = 1.75,
      chroma = 1,
      hue = 1.25
    },
    cache = {
      enabled = true,
      path = vim.fn.stdpath("cache") .. "/tiny-devicons-auto-colors-cache.json"
    },
    precise_search = {
      enabled = true,
      iteration = 10,
      precision = 30,
      threshold = 23
    },
    ignore = {
      -- 
    },
    autoreload = false
  }
}