-- A small automated session manager

return {
  "rmagatti/auto-session",
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