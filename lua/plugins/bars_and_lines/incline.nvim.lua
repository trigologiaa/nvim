-- Lightweight floating statuslines, intended for use with Neovim's new global statusline

render = function(props)
  local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
  if filename == "" then
    filename = "[+]"
  end
  local ft_icon, ft_color = require("nvim-web-devicons").get_icon_color(filename)
  local function get_git_diff()
    local icons = {
      removed = " ",
      changed = " ",
      added = " "
    }
    local signs = vim.b[props.buf].gitsigns_status_dict
    local labels = {}
    if signs == nil then
      return labels
    end
    for name, icon in pairs(icons) do
      if tonumber(signs[name]) and signs[name] > 0 then
        table.insert(labels, {icon .. signs[name] .. " ", group = "Diff" .. name})
      end
    end
    if #labels > 0 then
      table.insert(labels, {"| "})
    end
    return labels
  end
  local function get_diagnostic_label()
    local icons = {
      error = " ",
      warn = " ",
      info = " ",
      hint = " "
    }
    local label = {}
    for severity, icon in pairs(icons) do
      local n = #vim.diagnostic.get(props.buf, {severity = vim.diagnostic.severity[string.upper(severity)]})
      if n > 0 then
        table.insert(label, {icon .. n .. " ", group = "DiagnosticSign" .. severity})
      end
    end
    if #label > 0 then
      table.insert(label, {"| "})
    end
    return label
  end
  local function get_harpoon_items()
    local harpoon = require("harpoon")
    local marks = harpoon:list().items
    local current_file_path = vim.fn.expand("%:p:.")
    local label = {}
    for id, item in ipairs(marks) do
      if item.value == current_file_path then
        table.insert(label, {id .. " ", guifg = "#0e0e0e", gui = "bold"})
      else
        table.insert(label, {id .. " ", guifg = "#0e0e0e"})
      end
    end
    if #label > 0 then
      table.insert(label, 1, {"󰛢 ", guifg = "#0e0e0e"})
      table.insert(label, {"| "})
    end
    return label
  end
  local function get_file_name()
    local label = {}
    table.insert(label, {(ft_icon or "") .. " ", guifg = ft_color, guibg = "#0e0e0e"})
    table.insert(label, {vim.bo[props.buf].modified and " " or "", guifg = "#0e0e0e"})
    table.insert(label, {filename , gui = vim.bo[props.buf].modified and "bold,italic" or "bold"})
    if not props.focused then
      label["group"] = "BufferInactive"
    end
    return label
  end
  return {
    {
      "",
      guifg = "#0e0e0e"
    },
    {
      {
        get_diagnostic_label()
      },
      {
        get_git_diff()
      },
      {
        get_harpoon_items()
      },
      {
        get_file_name()
      },
      guibg = "#0e0e0e"
    },
    {
      "",
      guifg = "#0e0e0e"
    }
  }
end

return {
  "b0o/incline.nvim",
  event = "BufReadPre",
  opts = {
    debounce_threshold = {
      falling = 50,
      rising = 10
    },
    hide = {
      cursorline = true,
      focused_win = false,
      only_win = false
    },
    highlight = {
      groups = {
        InclineNormal = {
          default = true,
          group = "NormalFloat"
        },
        InclineNormalNC = {
          default = true,
          group = "NormalFloat"
        }
      }
    },
    ignore = {
      buftypes = "special",
      filetypes = {
        -- 
      },
      floating_wins = true,
      unlisted_buffers = true,
      wintypes = "special"
    },
    render = render,
    window = {
      margin = {
        horizontal = 0,
        vertical = 0
      },
      options = {
        signcolumn = "no",
        wrap = false
      },
      overlap = {
        borders = true,
        statusline = false,
        tabline = false,
        winbar = false
      },
      padding = 0,
      padding_char = " ",
      placement = {
        horizontal = "center",
        vertical = "bottom"
      },
      width = "fit",
      winhighlight = {
        active = {
          EndOfBuffer = "None",
          Normal = "InclineNormal",
          Search = "None"
        },
        inactive = {
          EndOfBuffer = "None",
          Normal = "InclineNormalNC",
          Search = "None"
        }
      },
      zindex = 50
    }
  }
}