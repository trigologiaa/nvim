return {
  -------------
  -- Session --
  -------------

  {
    -- A small automated session manager
    'rmagatti/auto-session',
    lazy = false,
    opts = {
      suppressed_dirs = {
        "~/",
        "~/Projects",
        "~/Downloads",
        "/"
      }
    }
  }
}