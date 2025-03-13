-- Easy previewing of CSV

return {
  "theKnightsOfRohan/csvlens.nvim",
  dependencies = "akinsho/toggleterm.nvim",
  config = function()
    require("csvlens").setup({direction = "float", exec_path = "csvlens", exec_install_path = vim.fn.stdpath("data") .. "/csvlens.nvim/"})
    vim.api.nvim_create_autocmd("BufReadPost", {pattern = "*.csv", callback = function() vim.cmd(":Csvlens") end})
  end
}