  -------------
  -- Utility --
  -------------

return {
  -- {
  --   -- Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu
  --   "folke/noice.nvim",
  --   lazy = false,
  --   opts = {},
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "rcarriga/nvim-notify"
  --   }
  -- },
  {
    -- Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu
    "folke/noice.nvim",
    lazy = false,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
      "hrsh7th/nvim-cmp"
    },
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        }
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false
      }
    }
  },
  {
    -- Module of mini.nvim to add out of the box animations for common built-in actions (cursor movement, scroll, resize, window open/close)
    "echasnovski/mini.nvim",
    version = false,
    lazy = false,
    config = function()
      require("mini.animate").setup({resize = {enable = false}, open = {enable = false}, close = {enable = false}, scroll = {enable = false}})
    end
  },
  {
    -- Easy previewing of CSV
    "theKnightsOfRohan/csvlens.nvim",
    lazy = false,
    dependencies = "akinsho/toggleterm.nvim",
    config = function()
      require("csvlens").setup({direction = "float", exec_path = "csvlens", exec_install_path = vim.fn.stdpath("data") .. "/csvlens.nvim/"})
      vim.api.nvim_create_autocmd("BufReadPost", {pattern = "*.csv", callback = function() vim.cmd(":Csvlens") end})
    end
  }
}