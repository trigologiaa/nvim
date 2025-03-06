  --------------------------
  -- Terminal Integration --
  --------------------------

return {
  {
    -- A little smart terminal/REPL manager with awesome features
    "Dan7h3x/neaterm.nvim",
    branch = "stable",
    lazy = false,
    opts = {},
    dependencies = {
      "nvim-lua/plenary.nvim",
      "ibhagwan/fzf-lua"
    }
  },
  {
    -- Open files from terminal buffers in your current Neovim instance instead of launching a nested instance
    "willothy/flatten.nvim",
    opts = {},
    -- lazy = false,
    lazy = false,
    priority = 1001
  }
}
