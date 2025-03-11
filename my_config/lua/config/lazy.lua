local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath})
end

vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- Configuration for modicator.nvim
vim.o.cursorline = true
vim.o.number = true
vim.o.termguicolors = true



require("lazy").setup({
  spec = {
    {"LazyVim/LazyVim", import = "lazyvim.plugins"},
    {import = "lazyvim.plugins.extras.ai.copilot"},
    {import = "lazyvim.plugins.extras.ai.copilot-chat"},
    {import = "lazyvim.plugins.extras.coding.mini-surround"},
    {import = "lazyvim.plugins.extras.editor.harpoon2"},
    {import = "lazyvim.plugins.extras.editor.mini-files"},
    {import = "lazyvim.plugins.extras.editor.snacks_explorer"},
    {import = "lazyvim.plugins.extras.editor.snacks_picker"},
    {import = "lazyvim.plugins.extras.formatting.biome"},
    {import = "lazyvim.plugins.extras.formatting.prettier"},
    {import = "lazyvim.plugins.extras.lang.clangd"},
    {import = "lazyvim.plugins.extras.lang.ruby"},
    {import = "lazyvim.plugins.extras.lang.python"},
    {import = "lazyvim.plugins.extras.lang.docker"},
    {import = "lazyvim.plugins.extras.lang.git"},
    {import = "lazyvim.plugins.extras.lang.go"},
    {import = "lazyvim.plugins.extras.lang.java"},
    {import = "lazyvim.plugins.extras.lang.json"},
    {import = "lazyvim.plugins.extras.lang.markdown"},
    {import = "lazyvim.plugins.extras.lang.typescript"},
    {import = "lazyvim.plugins.extras.linting.eslint"},
    {import = "lazyvim.plugins.extras.lsp.none-ls"},
    {import = "lazyvim.plugins.extras.util.mini-hipatterns"},
    {import = "plugins.ai"},
    {import = "plugins.bars_and_lines"},
    {import = "plugins.color"},
    {import = "plugins.colorscheme"},
    {import = "plugins.completion"},
    {import = "plugins.debugging"},
    {import = "plugins.dependency_management"},
    {import = "plugins.editing_support"},
    {import = "plugins.file_explorer"},
    {import = "plugins.formatting"},
    {import = "plugins.fuzzy_finder"},
    {import = "plugins.games"},
    {import = "plugins.git"},
    {import = "plugins.icon"},
    {import = "plugins.keybinding"},
    {import = "plugins.language"},
    {import = "plugins.language_server_support"},
    {import = "plugins.media"},
    {import = "plugins.motion"},
    {import = "plugins.neovim_lua_development"},
    {import = "plugins.note_taking"},
    {import = "plugins.preconfigured_configuration"},
    {import = "plugins.programming_language_support.css"},
    {import = "plugins.programming_language_support.go"},
    {import = "plugins.programming_language_support.http"},
    {import = "plugins.programming_language_support.java"},
    {import = "plugins.programming_language_support.json"},
    {import = "plugins.programming_language_support.markdown"},
    {import = "plugins.programming_language_support.php"},
    {import = "plugins.programming_language_support.python"},
    {import = "plugins.programming_language_support.typescript"},
    {import = "plugins.programming_language_support.various"},
    {import = "plugins.programming_language_support.yaml"},
    {import = "plugins.project"},
    {import = "plugins.register"},
    {import = "plugins.remote_development"},
    {import = "plugins.scrolling"},
    {import = "plugins.search"},
    {import = "plugins.session"},
    {import = "plugins.snacks"},
    {import = "plugins.snippet"},
    {import = "plugins.split_and_window"},
    {import = "plugins.syntax"},
    {import = "plugins.terminal_integration"},
    {import = "plugins.test"},
    {import = "plugins.utility"},
    {import = "plugins.workflow"}
  },
  defaults = {lazy = false, version = false},
  install = {colorscheme = {"tokyonight", "habamax"}},
  checker = {enabled = true},
  performance = {rtp = {disabled_plugins = {"gzip", "tarPlugin", "tohtml", "tutor", "zipPlugin"}}}
})
