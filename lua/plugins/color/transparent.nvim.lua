-- Make your Neovim transparent

return {
  "xiyaowong/transparent.nvim",
  config = function()
    require("transparent").setup(
      {
        enable = true,
        extra_groups = {
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "CursorLineNr",
          "EndOfBuffer",
          "InclineNormal",
          "InclineNormalNC"
        },
        exclude = {}
      }
    )
    vim.cmd("TransparentEnable")
  end
}