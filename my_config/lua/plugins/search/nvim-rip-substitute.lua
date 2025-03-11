-- Search and replace in the current buffer with a modern UI and modern regex flavor. A substitute for Vim's :substitute using ripgrep

return {
  "chrisgrieser/nvim-rip-substitute",
  cmd = "RipSubstitute",
  keys = {
    {"<leader>fs", function() require("rip-substitute").sub() end, mode = {"n", "x"}, desc = " rip substitute"}
  }
}
