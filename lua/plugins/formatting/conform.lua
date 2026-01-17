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
			javascript = {
				"prettier",
				stop_after_first = true,
			},
			typescript = {
				"prettier",
			},
			ruby = {
				"rubocop",
			},
			html = {
				"prettier",
			},
		},
		format_on_save = function()
			if vim.g.disable_autoformat then
				return
			end
			return { timeout_ms = 2000, lsp_format = "fallback" }
		end,
	},
}
