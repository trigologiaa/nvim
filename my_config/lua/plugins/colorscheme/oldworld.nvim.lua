-- Dark theme with relaxing and no-saturated colors

return {
  "dgox16/oldworld.nvim",
  enabled = false,
  lazy = false,
  priority = 1000,
  opts = {
    terminal_colors = true,
    variant = "oled",
    styles = {
      comments = {
        -- 
      },
      keywords = {
        -- 
      },
      identifiers = {
        -- 
      },
      functions = {
        -- 
      },
      variables = {
        -- 
      },
      booleans = {
        -- 
      }
    },
    integrations = {
      alpha = true,
      cmp = true,
      flash = true,
      gitsigns = true,
      hop = false,
      indent_blankline = true,
      lazy = true,
      lsp = true,
      markdown = true,
      mason = true,
      navic = false,
      neo_tree = false,
      neogit = false,
      neorg = false,
      noice = true,
      notify = true,
      rainbow_delimiters = true,
      telescope = true,
      treesitter = true
    },
    highlight_overrides = {
      -- 
    }
  }
}
