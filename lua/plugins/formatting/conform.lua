return {
	"stevearc/conform.nvim",
	enabled = true,
	event = "BufReadPost",
	opts = {
		formatters_by_ft = {
			go = {
				"gofumpt",
				"golines",
			},
			lua = {
				"stylua",
			},
			python = {
				"ruff_organize_imports",
				"ruff_fix",
				"ruff_format",
			},
			java = {
				"google-java-format",
			},
			javascript = {
				"prettier",
			},
			c = {
				"clang_format",
			},
			sql = {
				"sqruff",
			},
			r = {
				"air",
			},
			typescript = {
				"prettier",
			},
			html = {
				"prettier",
			},
			markdown = {
				"markdownlint-cli2",
				"prettier",
			},
			erb = {
				"erb_format",
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
