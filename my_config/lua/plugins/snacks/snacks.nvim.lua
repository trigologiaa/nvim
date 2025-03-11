-- A collection of QoL plugins for Neovim

return {
  "folke/snacks.nvim",
  opts = {
    image = {},
    picker = {
      matcher = {fuzzy = true, smartcase = true, ignorecase = true, filename_bonus = true},
      sources = {explorer = {matcher = {fuzzy = true, smartcase = true, ignorecase = true, filename_bonus = true, sort_empty = false}}},
    },
    dashboard = {
      sections = {
        {section = "header"},
        {icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1},
        {icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1},
        {icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1},
        {section = "startup"},
      },
      preset = {
        header = [[
██████╗ ████████╗██████╗ ██╗ ██████╗  ██████╗ ██╗      ██████╗  ██████╗ ██╗ █████╗  █████╗ 
██╔═══██╗╚══██╔══╝██╔══██╗██║██╔════╝ ██╔═══██╗██║     ██╔═══██╗██╔════╝ ██║██╔══██╗██╔══██╗
██║██╗██║   ██║   ██████╔╝██║██║  ███╗██║   ██║██║     ██║   ██║██║  ███╗██║███████║███████║
██║██║██║   ██║   ██╔══██╗██║██║   ██║██║   ██║██║     ██║   ██║██║   ██║██║██╔══██║██╔══██║
╚█║████╔╝   ██║   ██║  ██║██║╚██████╔╝╚██████╔╝███████╗╚██████╔╝╚██████╔╝██║██║  ██║██║  ██║
╚╝╚═══╝    ╚═╝   ╚═╝  ╚═╝╚═╝ ╚═════╝  ╚═════╝ ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝
]],
        keys = {
          {icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')"},
          {icon = " ", key = "n", desc = "New File", action = ":ene | startinsert"},
          {icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')"},
          {icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')"},
          {icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})"},
          {icon = " ", key = "s", desc = "Restore Session", section = "session"},
          {icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras"},
          {icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy"},
          {icon = " ", key = "q", desc = "Quit", action = ":qa"}
        }
      }
    }
  }
}