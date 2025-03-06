---------------------
-- Editing Support --
---------------------

return {
  {
    -- Highlight, list and search todo comments in your projects
    "folke/todo-comments.nvim",
    version = "*",
    dependencies = "nvim-lua/plenary.nvim",
    opts = {},
  },
  {
    -- Distraction-free coding
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = true,
        kitty = { enabled = false, font = "+2" },
        twilight = { enabled = true },
      },
    },
    keys = {
      { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
    },
  },
  {
    -- Rainbow delimiters with Tree-sitter
    "HiPhish/rainbow-delimiters.nvim",
    lazy = false,
  },
  {
    -- Use Tree-sitter to autoclose and autorename XML, HTML, JSX tag
    "windwp/nvim-ts-autotag",
    -- opts = {
    --   enable_close = true,
    --   enable_rename = true,
    --   enable_close_on_slash = false
    -- },
    -- per_filetype = {
    --   ["html"] = {
    --     enable_close = false
    --   }
    -- }
    autotag = {
      enable = true,
      enable_rename = true,
      enable_close_on_slash = true,
      filetypes = {
        html = {
          enable_close = false,
        },
      },
    },
  },
  {
    -- Automatically saves your work as often as needed and as seldom as possible
    "okuuva/auto-save.nvim",
    lazy = false,
    version = "*",
    cmd = "ASToggle",
    event = {
      "InsertLeave",
      "TextChanged",
    },
    opts = {},
  },
  {
    -- Shows virtual text of the current context
    "andersevenrud/nvim_context_vt",
    lazy = false,
  },
  {
    -- Peek lines in a non-obtrusive way.
    "nacro90/numb.nvim",
    lazy = false,
    config = function()
      require("numb").setup()
    end,
  },
  {
    -- Explain the regular expression under the cursor.
    "bennypowers/nvim-regexplainer",
    lazy = false,
    config = function()
      require("regexplainer").setup()
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "MunifTanjim/nui.nvim",
    },
  },
  -- The two of this plugis (above and below) need to be compared
  {
    -- Provides explanation for RegExp.
    "tomiis4/Hypersonic.nvim",
    event = "CmdlineEnter",
    cmd = "Hypersonic",
    config = function()
      require("hypersonic").setup({})
    end,
  },
  {
    -- Splitting/joining blocks of code like arrays, hashes, statements, objects, dictionaries, etc
    "Wansmer/treesj",
    keys = {
      "<space>m",
      "<space>j",
      "<space>s",
    },
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("treesj").setup({})
    end,
  },
  {
    -- Dynamic & stylized foldtext
    "OXY2DEV/foldtext.nvim",
    lazy = false,
  },
  {
    -- Smart and Powerful comment plugin
    "numToStr/Comment.nvim",
    lazy = false,
    opts = {
      config = function()
        require("Comment").setup()
      end,
    },
  },
  {
    -- Sets the commentstring option based on the cursor location in the file
    "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = false,
  },
  {
    -- Generate and open your HTML code documentation
    "Zeioth/dooku.nvim",
    lazy = false,
    opts = {},
  },
}
