  ------------------------
  -- Remote Development --
  ------------------------

return {
  {
    -- Provides remote collaboration capabilities from anywhere, making it ideal for pair-programming scenarios
    "azratul/live-share.nvim",
    dependencies = "jbyuki/instant.nvim",
    lazy = false,
    config = function()
      require("live-share").setup({port_internal = 9876, service = "serveo.net"})
    end
  }
}
