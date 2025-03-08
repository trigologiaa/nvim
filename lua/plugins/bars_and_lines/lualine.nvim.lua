-- A blazing fast and easy to configure Neovim statusline

local mode = {
  "mode",
  icon = "  ",
  separator = {
    left = ""
  },
  right_padding = 1,
  fmt = function(str)
    if str == "NORMAL" then
      return str .. "   "
    elseif str == "INSERT" then
      return str .. "   "
    elseif str == "VISUAL" then
      return str .. " 󰈈  "
    elseif str == "COMMAND" then
      return str .. "   "
    end
    return str
  end
}

local location = {
  "location",
  separator = {
    right = ""
  },
  left_padding = 1
}

return {
  "nvim-lualine/lualine.nvim",
  enabled = true,
  event = "BufWinEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  opts = {
    options = {
      icons_enabled = true,
      theme = "tokyonight",
      component_separators = {
        left = "",
        right = ""
      },
      section_separators = {
        left = "",
        right = ""
      },
      disabled_filetypes = {
        statusline = {
          -- 
        },
        winbar = {
          -- 
        }
      },
      ignore_focus = {
        -- 
      },
      always_divide_middle = true,
      always_show_tabline = true,
      globalstatus = false,
      refresh = {
        statusline = 100,
        tabline = 100,
        winbar = 100
      }
    },
    sections = {
      lualine_a = {
        mode,
        "hostname",
        "filesize",
      },
      lualine_b = {
        "branch",
        "diff",
        "diagnostics"
      },
      lualine_c = {
        "filename",
        "searchcount",
        "selectioncount"
      },
      lualine_x = {
        "encoding",
        "fileformat",
        "filetype"
      },
      lualine_y = {
        "buffers",
        "tabs",
        "windows"
      },
      lualine_z = {
        "progress",
        location
      }
    },
    inactive_sections = {
      lualine_a = {
        -- 
      },
      lualine_b = {
        -- 
      },
      lualine_c = {
        "filename"
      },
      lualine_x = {
        "location"
      },
      lualine_y = {
        -- 
      },
      lualine_z = {
        -- 
      }
    },
    tabline = {
      -- 
    },
    winbar = {
      -- 
    },
    inactive_winbar = {
      -- 
    },
    extensions = {
      -- 
    }
  }
}