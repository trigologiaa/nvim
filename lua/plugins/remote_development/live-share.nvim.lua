-- Provides remote collaboration capabilities from anywhere, making it ideal for pair-programming scenarios

return {
  "azratul/live-share.nvim",
  dependencies = {
    "jbyuki/instant.nvim"
  },
  lazy = false,
  config = function()
    require("live-share").setup({port_internal = 3000, service = "serveo.net"})
  end
}
