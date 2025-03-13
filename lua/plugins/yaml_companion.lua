-- Get, set and autodetect YAML schemas in your buffers

return {
  "someone-stole-my-name/yaml-companion.nvim",
  requires = {
      "neovim/nvim-lspconfig",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
  },
  config = function()
    require("telescope").load_extension("yaml_schema")
  end
}