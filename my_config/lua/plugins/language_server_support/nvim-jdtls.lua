-- Extensions for the built-in LSP support for eclipse.jdt.ls
-- For the moment I disabled this

return {
  "mfussenegger/nvim-jdtls",
  enabled = false,
  config = function()
    local config = {
      cmd = {"/home/gaston/.local/share/nvim/mason/bin/jdtls"},
      root_dir = vim.fs.dirname(vim.fs.find({"gradlew", ".git", "mvnw"}, {upward = true})[1])
    }
    require("jdtls").start_or_attach(config)
  end
}