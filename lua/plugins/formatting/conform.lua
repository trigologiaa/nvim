return {
	"stevearc/conform.nvim",
	enabled = true,
	event = "BufReadPost",
	opts = {
		formatters_by_ft = {
			go = {
				"goimports",
				"gofumpt",
				"golines",
			},
			lua = {
				"stylua",
			},
			python = {
				"black",
			},
			java = {
				"google-java-format",
			},
			c = {
				"clang-format",
			},
			sql = {
				"sqruff",
			},
			r = {
				"air",
			},
		},
		format_on_save = function()
			if vim.g.disable_autoformat then
				return
			end
			return { timeout_ms = 500, lsp_format = "fallback" }
		end,
	},
}
