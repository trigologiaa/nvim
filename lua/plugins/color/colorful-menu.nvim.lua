-- Colorize your auto completion menu using Tree-sitter
-- Review later with the completion plugins....

-- Has built-in support for
  -- rust-analyzer (Rust)
  -- gopls (Go)
  -- typescript-language-server/vtsls (TypeScript)
  -- lua-ls (Lua)
  -- clangd (C/CPP)
  -- intelephense (PHP)
  -- zls (Zig)
  -- roslyn (C#)
  -- basedpyright/pylance/pyright (Python)
  -- dartls (Dart)

return {
  "xzbdmw/colorful-menu.nvim",
  enabled = true,
  lazy = false,
  opts = {
    ls = {
      lua_ls = {
        arguments_h1 = "@comment"
      },
      gopls = {
        event = "BufReadPre",
        add_colon_before_type = false,
        preserve_type_when_truncate = true
      },
      ts_ls = {
        extra_info_hl = "@comment"
      },
      vtsls = {
        extra_info_hl = "@comment"
      },
      ["rust-analyzer"] = {
        extra_info_hl = "@comment",
        align_type_to_right = true,
        preserve_type_when_truncate = true
      },
      clang = {
        extra_info_hl = "@comment",
        align_type_to_right = true,
        import_dot_hl = "@comment",
        preserve_type_when_truncate = true
      },
      zls = {
        align_type_to_right = true
      },
      roslyn = {
        extra_info_hl = "@comment"
      },
      dartls = {
        extra_info_hl = "@comment"
      },
      basedpyright = {
        extra_info_hl = "@comment"
      },
      fallback = true,
      fallback_extra_info_hl = "@comment"
    },
    fallback_highlight = "@variable",
    max_width = 60
  }
}