-- Use Tree-sitter to autoclose and autorename XML, HTML, JSX tag

return {
  "windwp/nvim-ts-autotag",
  -- opts = {
  --   enable_close = true,
  --   enable_rename = true,
  --   enable_close_on_slash = false
  -- },
  -- per_filetype = {
  --   ["html"] = {
  --     enable_close = false
  --   }
  -- }
  autotag = {
    enable = true,
    enable_rename = true,
    enable_close_on_slash = true,
    filetypes = {
      html = {
        enable_close = false
      }
    }
  }
}