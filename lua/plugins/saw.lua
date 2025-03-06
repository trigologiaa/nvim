  ----------------------
  -- Split and Window --
  ----------------------

return {
  {
    -- Easily jump between Neovim windows
    "yorickpeterse/nvim-window",
    keys = {
      {"<leader>wj", "<cmd>lua require('nvim-window').pick()<cr>", desc = "nvim-window: Jump to window"}
    },
    config = true
  },
  {
    -- A configurable color split line
    "nvim-zh/colorful-winsep.nvim",
    config = true,
    event = {
      "WinLeave"
    }
  },
  {
    -- Easy Neovim-Tmux navigation, completely written in Lua
    "alexghergh/nvim-tmux-navigation",
    lazy = false
  }
}
