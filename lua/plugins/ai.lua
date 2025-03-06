  --------
  -- AI --
  --------

local prompts = {
  Explain = "Please explain how the following code works.",
  Review = "Please review the following code and provide suggestions for improvement.",
  Tests = "Please explain how the selected code works, then generate unit tests for it.",
  Refactor = "Please refactor the following code to improve its clarity and readability.",
  FixCode = "Please fix the following code to make it work as intended.",
  FixError = "Please explain the error in the following text and provide a solution.",
  BetterNamings = "Please provide better names for the following variables and functions.",
  Documentation = "Please provide documentation for the following code.",
  JsDocs = "Please provide JsDocs for the following code.",
  DocumentationForGithub = "Please provide documentation for the following code ready for GitHub using markdown.",
  CreateAPost = "Please provide documentation for the following code to post it in social media, like Linkedin, it has be deep, well explained and easy to understand. Also do it in a fun and engaging way.",
  SwaggerApiDocs = "Please provide documentation for the following API using Swagger.",
  SwaggerJsDocs = "Please write JSDoc for the following API using Swagger.",
  Summarize = "Please summarize the following text.",
  Spelling = "Please correct any grammar and spelling errors in the following text.",
  Wording = "Please improve the grammar and wording of the following text.",
  Concise = "Please rewrite the following text to make it more concise."
}

return {
  {
    -- Chat with your code as if you are in Cursor AI IDE
    "yetone/avante.nvim",
    lazy = false,
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
          }
        },
        ft = {
          "markdown",
          "Avante"
        }
      }
    }
  },
  {
    -- A chat interface for GitHub Copilot that allows you to directly ask and receive answers to coding-related questions
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      prompts = prompts,
      system_prompt = "I am NAIVIM (Neo Artificial Intelligence Vim), Hi :)",
      model = "gpt-4o",
      answer_header = " NAIVIM ",
      window = {
        layout = "float"
      }
    }
  }
}
