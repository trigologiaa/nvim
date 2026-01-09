local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable",
		lazyrepo,
		lazypath,
	})
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{
				"Failed to clone lazy.nvim:\n",
				"ErrorMsg",
			},
			{
				out,
				"WarningMsg",
			},
			{
				"\nPress any key to exit...",
			},
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("lazy").setup({
	ui = {
		border = "rounded",
	},
	spec = {
		{
			import = "plugins.colorscheme",
		},
		{
			import = "plugins.completion",
		},
		{
			import = "plugins.lsp",
		},
		{
			import = "plugins.keybinding",
		},
		{
			import = "plugins.syntax",
		},
		{
			import = "plugins.file_manager",
		},
		{
			import = "plugins.snippets",
		},
		{
			import = "plugins.fuzzy_finder",
		},
		{
			import = "plugins.plugin_manager",
		},
		{
			import = "plugins.markdown",
		},
		{
			import = "plugins.language",
		},
		{
			import = "plugins.startup",
		},
		{
			import = "plugins.register",
		},
		{
			import = "plugins.project",
		},
		{
			import = "plugins.buffer",
		},
		{
			import = "plugins.color",
		},
		{
			import = "plugins.bars_and_lines",
		},
		{
			import = "plugins.media",
		},
		{
			import = "plugins.test",
		},
		{
			import = "plugins.dap",
		},
		{
			import = "plugins.utility",
		},
		{
			import = "plugins.note_taking",
		},
		{
			import = "plugins.animation",
		},
		{
			import = "plugins.terminal",
		},
		{
			import = "plugins.git",
		},
		{
			import = "plugins.motion",
		},
		{
			import = "plugins.editing_support",
		},
		{
			import = "plugins.formatting",
		},
		{
			import = "plugins.ui",
		},
		{
			import = "plugins.remote_development",
		},
		{
			import = "plugins.window",
		},
		{
			import = "plugins.learning",
		},
	},
	install = {
		colorscheme = {
			"catppuccin",
		},
	},
	checker = {
		enabled = true,
	},
})
