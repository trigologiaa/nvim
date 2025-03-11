-- Import modules faster based on what you've already imported in your project

return {
  "piersolenski/telescope-import.nvim",
  enabled = true,
  lazy = false,
  dependencies = {
    "nvim-telescope/telescope.nvim"
  },
  config = function()
    require("telescope").load_extension("import")
  end
}