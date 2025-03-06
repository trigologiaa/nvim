  ----------------
  -- Keybinding --
  ----------------

return {
  {
    -- Neovim plugin that shows a popup with possible keybindings of the command you started typing
    "folke/which-key.nvim",
    lazy = false,
    opts = {
      preset = "classic",
      win = {
        border = "single"
      }
    },
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    keys = {
      {"<leader>?", function() require("which-key").show({global = false}) end, desc = "Buffer Local Keymaps (which-key)"},
      {"<leader>o", group = "Obsidian"}
    }
  },
  -- Test the other ones later
  -- {
  --   -- Define your keymaps, commands, and autocommands as simple Lua tables, and create a legend for them at the same time (like VS Code's Command Palette), integrates with which-key.nvim
  --   'mrjones2014/legendary.nvim',
  --   priority = 10000,
  --   lazy = false
  -- },
  -- {
  --   -- Create and manage keybindings and commands in a more organized manner and search them quickly through Telescope
  --   "FeiyouG/commander.nvim",
  --   dependencies = "nvim-telescope/telescope.nvim"
  -- },
  -- {
  --   -- Craft temporary keymap overlays and layered modes with ease
  --   "debugloop/layers.nvim",
  --   opts = {}
  -- }
}