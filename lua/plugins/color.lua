  -----------
  -- Color --
  -----------

return {
  {
    -- Make your Neovim transparent
    "xiyaowong/transparent.nvim",
    -- enabled = false,
    config = function()
      require("transparent").setup(
        {
          enable = true,
          extra_groups = {
            "Normal",
            "NormalNC",
            "Comment",
            "Constant",
            "Special",
            "Identifier",
            "Statement",
            "PreProc",
            "Type",
            "Underlined",
            "Todo",
            "String",
            "Function",
            "Conditional",
            "Repeat",
            "Operator",
            "Structure",
            "LineNr",
            "NonText",
            "SignColumn",
            "CursorLineNr",
            "EndOfBuffer",
            "InclineNormal",
            "InclineNormalNC"
          },
          exclude = {}
        }
      )
      vim.cmd("TransparentEnable")
    end
  },
  {
    -- Module of mini.nvim to highlight patterns in text with configurable highlighters. Works asynchronously with configurable debounce delay
    "echasnovski/mini.hipatterns",
    event = "BufReadPre",
    opts = {
      highlighters = {
        hsl_color = {
          pattern = "hsl%(%d+,? %d+,? %d+%)",
          group = function(_, match)
            local utils = require("config.gentleman.utils")
            local h, s, l = match:match("hsl%((%d+),? (%d+),? (%d+)%)")
            h, s, l = tonumber(h), tonumber(s), tonumber(l)
            local hex_color = utils.hslToHex(h, s, l)
            return MiniHipatterns.compute_hex_color_group(hex_color, "bg")
          end
        }
      }
    }
  },
  {
    -- Dim inactive portions of the code you're editing using Tree-sitter
    "folke/twilight.nvim",
    lazy = false
  },
  {
    -- A plugin providing utils to work with colors (picker, conversion) inside Neovim
    "max397574/colortils.nvim",
    cmd = "Colortils",
    config = function()
      require("colortils").setup()
    end
  },
  {
    -- Automatically updates nvim-web-devicons colors based on your current colorscheme
    "rachartier/tiny-devicons-auto-colors.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    lazy = false,
    config = function()
        require('tiny-devicons-auto-colors').setup()
    end
  },
  {
    -- Colorize your auto completion menu using Tree-sitter
    "xzbdmw/colorful-menu.nvim",
    lazy = false
  }
}