return {
	"mfussenegger/nvim-lint",
	config = function()
		local lint = require("lint")
		lint.linters.golangcilint = {
			cmd = "golangci-lint",
			args = {
				"run",
				"--config",
				vim.fn.getcwd() .. "/.golangci.yaml",
				"--out-format=line-number",
			},
			stdin = false,
			append_fname = true,
			ignore_exitcode = true,
			parser = require("lint.parser").from_errorformat("%f:%l:%c: %m", { source = "golangci-lint" }),
		}
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
			ruby = {
				"rubocop",
			},
		}
		vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
			callback = function()
				require("lint").try_lint(nil, { ignore_errors = true })
			end,
		})
	end,
}
