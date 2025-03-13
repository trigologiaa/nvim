-- Make your Neovim transparent

on_clear = function()
end

return {
  "xiyaowong/transparent.nvim",
  enabled = true,
  opts = {
    groups = {
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
      "CursorLine",
      "CursorLineNr",
      "StatusLine",
      "StatusLineNC",
      "EndOfBuffer"
    },
    extra_groups = {
      "InclineNormal",
      "InclineNormalNC",
      "NormalFloat",
      "NvimTreeNormal"
    },
    exclude_groups = {
      -- 
    },
    on_clear = on_clear
  }
}