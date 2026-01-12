return {
	"zeioth/garbage-day.nvim",
	enabled = true,
	dependencies = "neovim/nvim-lspconfig",
	event = "VeryLazy",
	opts = {
		aggressive_mode = false,
		-- excluded_lsp_clients = nil,
		grace_period = 60 * 15,
		wakeup_delay = 0,
	},
}
