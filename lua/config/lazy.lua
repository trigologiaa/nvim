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
    {import = "plugins"},
    {import = "plugins.bars_and_lines"},
    {import = "plugins.color"}
  },
  defaults = {lazy = false, version = false},
  install = {colorscheme = {"tokyonight", "habamax"}},
  checker = {enabled = true},
  performance = {rtp = {disabled_plugins = {"gzip", "tarPlugin", "tohtml", "tutor", "zipPlugin"}}}
})
