-- A plugin to automate testcases management and checking for Competitive Programming contests.

return {
  "xeluxee/competitest.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim"
  },
  config = function() require("competitest").setup() end,
  cmd = {
    "CompetiTest add_testcase",
    "CompetiTest edit_testcase"
  }
}