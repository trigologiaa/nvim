return {
	"mfussenegger/nvim-lint",
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			go = {
				"golangcilint",
			},
			java = {
				"checkstyle",
			},
			javascript = {
				"eslint_d",
			},
			python = {
				"ruff",
			},
		}
		vim.api.nvim_create_autocmd({
			"BufWritePost",
			"BufReadPost",
			"InsertLeave",
		}, {
			callback = function()
				require("lint").try_lint(nil, {
					ignore_errors = true,
				})
			end,
		})
	end,
}
