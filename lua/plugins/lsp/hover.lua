return {
	"lewis6991/hover.nvim",
	enabled = true,
	-- event = "BufReadPost",
	opts = {
		providers = {
			-- "hover.providers.diagnostic",
			{
				module = "hover.providers.lsp",
				priority = 2000,
			},
			-- "hover.providers.dap",
			-- "hover.providers.man",
			-- "hover.providers.dictionary",
			-- 'hover.providers.gh',
			-- 'hover.providers.gh_user',
			-- 'hover.providers.jira',
			-- 'hover.providers.fold_preview',
			-- 'hover.providers.highlight',
		},
		preview_opts = {
			border = "single",
		},
		preview_window = false,
		title = false,
		mouse_providers = {
			"hover.providers.lsp",
		},
		mouse_delay = 1000,
	},
}
