-- Chat with your code as if you are in Cursor AI IDE

return {
  "yetone/avante.nvim",
  enabled = false,
  version = false,
  opts = {
    provider = "copilot",
    copilot = {
      model = "claude-3.5-sonnet"
    },
    auto_suggestions_provider = "copilot",
    behaviour = {
      auto_suggestions = false,
      auto_set_highlight_group = true,
      auto_set_keymaps = true,
      auto_apply_diff_after_generation = false,
      support_paste_from_clipboard = false
    },
    mappings = {
      diff = {
        ours = "co",
        theirs = "ct",
        all_theirs = "ca",
        both = "cb",
        cursor = "cc",
        next = "]x",
        prev = "[x"
      },
      suggestion = {
        accept = "<M-l>",
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<C-]>"
      },
      jump = {
        next = "]]",
        prev = "[["
      },
      submit = {
        normal = "<CR>",
        insert = "<C-s>"
      },
      sidebar = {
        apply_all = "A",
        apply_cursor = "a",
        switch_windows = "<Tab>",
        reverse_switch_windows = "<S-Tab>"
      }
    },
    hints = {
      enabled = false
    },
    windows = {
      position = "left",
      wrap = true,
      width = 30,
      sidebar_header = {
        enabled = true,
        align = "center",
        rounded = false
      },
      input = {
        prefix = "> ",
        height = 8
      },
      edit = {
        start_insert = true
      },
      ask = {
        floating = false,
        start_insert = true,
        focus_on_apply = "ours"
      }
    },
    highlights = {
      diff = {
        current = "DiffText",
        incoming = "DiffAdd"
      }
    },
    diff = {
      autojump = true,
      list_opener = "copen",
      override_timeoutlen = 500
    }
  },
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    {
      "HakonHarnes/img-clip.nvim",
      lazy = false,
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true
          },
          use_absolute_path = true
        }
      }
    },
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = {
          "markdown",
          "Avante"
        },
      },
      ft = {
        "markdown",
        "Avante"
      }
    }
  }
}