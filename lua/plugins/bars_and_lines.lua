  --------------------
  -- Bars and Lines --
  --------------------

return {
  {
    -- A blazing fast and easy to configure Neovim statusline
    "nvim-lualine/lualine.nvim",
    lazy = false,
    requires = {
      "nvim-tree/nvim-web-devicons",
      opt = true
    },
    opts = {
      options = {
        globalstatus = true,
        section_separators = {left = "", right = ""},
				component_separators = "",
        icons_enabled = true
      },
      sections = {
        lualine_a = {{"mode", icon = " |", separator = {left = ""}, right_padding = 1, fmt = function(str) if str == 'NORMAL' then return str .. '  ' elseif str == 'INSERT' then return str .. '  ' elseif str == 'VISUAL' then return str .. ' 󰈈 ' elseif str == 'COMMAND' then return str .. '  ' end return str end}},
        lualine_b = {"filename", "branch"},
				lualine_c = {"%="},
				lualine_x = {},
				lualine_y = {"filetype", "progress"},
        lualine_z = {{"location", separator = {right = ""}, left_padding = 1}}
      }
    }
  },
  {
    -- Lightweight floating statuslines, intended for use with Neovim's new global statusline
    "b0o/incline.nvim",
    event = "BufReadPre",
    priority = 1200,
    config = function()
      require("incline").setup({window = {margin = {vertical = 0, horizontal = 1}}, hide = {cursorline = true}, render = function(props) local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t") if vim.bo[props.buf].modified then filename = "[+] " .. filename end local icon, color = require("nvim-web-devicons").get_icon_color(filename) return {{icon, guifg = color}, {" "}, {filename}} end})
    end
  },
  {
    -- Highlight the word under the cursor
    "sontungexpt/stcursorword",
    lazy = false,
    config = true
  },
  {
    -- Cursor line number mode indicator. Changes the CursorLineNr highlight based on Vim mode
    'mawkler/modicator.nvim',
    event = "ModeChanged",
    opts = {
      show_warnings = false,
      highlights = {defaults = {bold = true}}
    },
    dependencies = "folke/tokyonight.nvim",
    init = function()
      vim.o.cursorline = true
      vim.o.number = true
      vim.o.termguicolors = true
    end
  },
  {
    -- A snazzy buffer line built using Lua
    "akinsho/bufferline.nvim",
    enabled = false
  },
}