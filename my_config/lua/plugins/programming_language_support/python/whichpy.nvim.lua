-- Switch Python interpreter without restarting LSP

return {
  "neolooong/whichpy.nvim",
  lazy = false,
  dependencies = {
    "mfussenegger/nvim-dap-python",
    "nvim-telescope/telescope.nvim"
  },
  opts = {
    -- 
  }
}