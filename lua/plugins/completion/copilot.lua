-- Fully featured Lua replacement for GitHub/copilot.vim

-- Integrations
-- The copilot.api module can be used to build integrations on top of copilot.lua.

-- zbirenbaum/copilot-cmp: Integration with nvim-cmp.
-- AndreM222/copilot-lualine: Integration with lualine.nvim.

return {
  "zbirenbaum/copilot.lua",
  enabled = false,
  lazy = false,
  opts = {
    panel = {
      enabled = true,
      auto_refresh = false,
      keymap = {
        jump_prev = "[[",
        jump_next = "]]",
        accept = "<CR>",
        refresh = "gr",
        open = "<M-CR>"
      },
      layout = {
        position = "bottom",
        ratio = 0.4
      }
    },
    suggestion = {
      enabled = true,
      auto_trigger = false,
      hide_during_completion = true,
      debounce = 75,
      keymap = {
        accept = "<M-l>",
        accept_word = false,
        accept_line = false,
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<C-]>",
      }
    },
    filetypes = {
      yaml = false,
      markdown = false,
      help = false,
      gitcommit = false,
      gitrebase = false,
      hgcommit = false,
      svn = false,
      cvs = false,
      ["."] = false
    },
    copilot_node_command = "node",
    server_opts_overrides = {
      -- 
    }
  }
}
