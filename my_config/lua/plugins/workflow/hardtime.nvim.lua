-- Helping you establish good command workflow and habit, the plugin is disabled by default only for the configuration of the other ones.

return {
  "m4xshen/hardtime.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim"
  },
  cmd = {
    "Hardtime enable",
    "Hardtime disable",
    "Hardtime toggle"
  }
}
