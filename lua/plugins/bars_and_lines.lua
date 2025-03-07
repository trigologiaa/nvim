--------------------
-- Bars and Lines --
--------------------

return {
  {
    -- A blazing fast and easy to configure Neovim statusline
    "nvim-lualine/lualine.nvim",
    event = "BufWinEnter",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        globalstatus = true,
        section_separators = { left = "", right = "" },
        component_separators = " | ",
        icons_enabled = true,
      },
      sections = {
        lualine_a = {
          {
            "mode",
            icon = " |",
            separator = { left = "", right = "" },
            right_padding = 1,
            fmt = function(str)
              if str == "NORMAL" then
                return str .. "   |"
              elseif str == "INSERT" then
                return str .. "   |"
              elseif str == "VISUAL" then
                return str .. " 󰈈  |"
              elseif str == "COMMAND" then
                return str .. "   |"
              end
              return str
            end,
          },
          "hostname",
          "filesize",
        },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename", "searchcount", "selectioncount" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "buffers", "tabs", "windows" },
        lualine_z = { "progress", { "location", separator = { right = "" }, left_padding = 1 } },
      },
    },
  },
  {
    -- Lightweight floating statuslines, intended for use with Neovim's new global statusline
    "b0o/incline.nvim",
    event = "BufReadPre",
    priority = 1200,
    config = function()
      local devicons = require("nvim-web-devicons")
      require("incline").setup({
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if filename == "" then
            filename = "[No Name]"
          end
          local ft_icon, ft_color = devicons.get_icon_color(filename)
          local function get_git_diff()
            local icons = { removed = "", changed = "", added = "" }
            local signs = vim.b[props.buf].gitsigns_status_dict
            local labels = {}
            if signs == nil then
              return labels
            end
            for name, icon in pairs(icons) do
              if tonumber(signs[name]) and signs[name] > 0 then
                table.insert(labels, { icon .. signs[name] .. " ", group = "Diff" .. name })
              end
            end
            if #labels > 0 then
              table.insert(labels, { "┊ " })
            end
            return labels
          end
          local function get_diagnostic_label()
            local icons = { error = "", warn = "", info = "", hint = "" }
            local label = {}
            for severity, icon in pairs(icons) do
              local n = #vim.diagnostic.get(props.buf, { severity = vim.diagnostic.severity[string.upper(severity)] })
              if n > 0 then
                table.insert(label, { icon .. n .. " ", group = "DiagnosticSign" .. severity })
              end
            end
            if #label > 0 then
              table.insert(label, { "┊ " })
            end
            return label
          end
          return {
            { get_diagnostic_label() },
            { get_git_diff() },
            { (ft_icon or "") .. " ", guifg = ft_color, guibg = "none" },
            { filename .. " ", gui = vim.bo[props.buf].modified and "bold,italic" or "bold" },
            { "┊  " .. vim.api.nvim_win_get_number(props.win), group = "DevIconWindows" },
          }
        end,
      })
    end,
  },
  {
    -- Highlight the word under the cursor
    "sontungexpt/stcursorword",
    lazy = false,
    config = true,
  },
  {
    -- Cursor line number mode indicator. Changes the CursorLineNr highlight based on Vim mode
    "mawkler/modicator.nvim",
    event = "ModeChanged",
    opts = {
      show_warnings = false,
      highlights = { defaults = { bold = true } },
    },
    dependencies = "folke/tokyonight.nvim",
    init = function()
      vim.o.cursorline = true
      vim.o.number = true
      vim.o.termguicolors = true
    end,
  },
  {
    -- A snazzy buffer line built using Lua
    "akinsho/bufferline.nvim",
    enabled = false,
  },
}
