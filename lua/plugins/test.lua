  ----------
  -- Test --
  ----------

return {
  {
    -- An extensible framework for interacting with tests within Neovim
    "nvim-neotest/neotest",
    lazy = false,
    dependencies = {
      "antoinemadec/FixCursorHold.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-neotest/neotest-go",
      "nvim-neotest/neotest-python",
      "nvim-neotest/nvim-nio",
      "nvim-treesitter/nvim-treesitter"
    },
    config = function()
      local neotest_ns = vim.api.nvim_create_namespace("neotest")
      vim.diagnostic.config({virtual_text = {format = function(diagnostic) local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "") return message end}}, neotest_ns)
      require("neotest").setup({adapters = {require("neotest-go"), require("neotest-python")}})
      vim.keymap.set("n", "<leader>tn", function() require("neotest").run.run() end, {})
      vim.keymap.set("n", "<leader>ta", function() require("neotest").run.run(vim.fn.expand("%")) end, {})
      vim.keymap.set("n", "<leader>ts", function() require("neotest").summary.toggle() end, {})
      vim.keymap.set("n", "<leader>ti", function() require("neotest").output.open({ enter = true }) end, {})
    end
  },
  {
    -- Run your tests in split window or popup with live feedback
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
}