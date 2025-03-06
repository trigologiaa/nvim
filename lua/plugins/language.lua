  --------------
  -- Language --
  --------------

return {
  {
    -- Translate your text with an interactive translation window
    "potamides/pantran.nvim",
    lazy = false,
    config = function ()
      local actions = require("pantran.ui.actions")
      require("pantran").setup{
        default_engine = "google",
        engines = {
          yandex = {
            default_source = "auto",
            default_target = "es"
          },
        },
        controls = {
          mappings = {
            edit = {
              n = {
                ["<Leader><Left>"] = actions.select_source,
                ["<Leader><Right>"] = actions.select_target,
                ["<Leader><Up>"] = actions.select_engine
              },
              i = {
                ["<C-y>"] = false,
                ["<C-a>"] = require("pantran.ui.actions").yank_close_translation
              }
            },
            select = {
              n = {}
            }
          }
        }
      }
    end
  }
}