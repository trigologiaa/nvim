-- Run your tests in split window or popup with live feedback

return {
  "quolpr/quicktest.nvim",
  lazy = false,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim"
  },
  config = function()
    local qt = require("quicktest")
    qt.setup({adapters = {require("quicktest.adapters.criterion"), require("quicktest.adapters.dart"), require("quicktest.adapters.elixir"), require("quicktest.adapters.golang")({}), require("quicktest.adapters.playwright")({}), require("quicktest.adapters.vitest")({})}, default_win_mode = "split", use_builtin_colorizer = true})
  end,
  keys = {
    {"<leader>tl", function() local qt = require("quicktest") qt.run_line() end, desc = "[T]est Run [L]line"},
    {"<leader>tf", function() local qt = require("quicktest") qt.run_file() end, desc = "[T]est Run [F]ile"},
    {"<leader>td", function() local qt = require("quicktest") qt.run_dir() end, desc = "[T]est Run [D]ir"},
    {"<leader>ta", function() local qt = require("quicktest") qt.run_all() end, desc = "[T]est Run [A]ll"},
    {"<leader>tp", function() local qt = require("quicktest") qt.run_previous() end, desc = "[T]est Run [P]revious"},
    {"<leader>tt", function() local qt = require("quicktest") qt.toggle_win("split") end, desc = "[T]est [T]oggle Window"},
    {"<leader>tc", function() local qt = require("quicktest") qt.cancel_current_run() end, desc = "[T]est [C]ancel Current Run"}
  }
}