  ---------------------------
  -- Dependency Management --
  ---------------------------

return {
  {
    -- Import modules faster based on what you've already imported in your project
    'piersolenski/telescope-import.nvim',
    lazy = false,
    dependencies = 'nvim-telescope/telescope.nvim',
    config = function()
      require("telescope").load_extension("import")
    end
  }
}