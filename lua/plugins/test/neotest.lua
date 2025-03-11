-- An extensible framework for interacting with tests within Neovim

return {
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
}