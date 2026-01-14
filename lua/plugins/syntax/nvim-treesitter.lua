return {
	"nvim-treesitter/nvim-treesitter",
	enabled = true,
	branch = "main",
	build = ":TSUpdate",
	lazy = false,
	dependencies = "Hdoc1509/gh-actions.nvim",
	opts = {
		ensure_installed = {
			"go",
			"gomod",
			"gowork",
			"markdown",
			"gh_actions_expressions",
			"yaml",
			"json",
			"html",
			"latex",
			"diff",
			"lua",
			"luadoc",
			"python",
			"java",
			"javadoc",
			"xml",
			"c",
			"make",
		},
		install_dir = vim.fn.stdpath("data") .. "/site",
		highlight = {
			enable = true,
		},
	},
	config = function(_, opts)
		require("gh-actions.tree-sitter.").setup()
		local ts = require("nvim-treesitter")
		vim.opt.runtimepath:append(opts.install_dir)
		ts.setup(opts)
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "go",
			callback = function(ev)
				-- Active Highlights, Injections and Locals
				pcall(vim.treesitter.start, ev.buf, "go")
				-- Active Indents
				vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				-- Active Folds
				-- vim.wo.foldmethod = "expr"
				-- vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
			end,
		})
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "python",
			callback = function(ev)
				pcall(vim.treesitter.start, ev.buf, "python")
				vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
