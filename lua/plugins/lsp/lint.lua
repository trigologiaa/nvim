return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			go = {
				"golangcilint",
			},
			java = {
				"checkstyle",
			},
		}
		vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
			group = vim.api.nvim_create_augroup("user_lint", { clear = true }),
			callback = function()
				lint.try_lint(nil, { ignore_errors = true })
			end,
		})
	end,
}
