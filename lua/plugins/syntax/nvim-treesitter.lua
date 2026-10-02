return {
	"nvim-treesitter/nvim-treesitter",
	enabled = true,
	branch = "main",
	build = ":TSUpdate",
	lazy = false,
	dependencies = "Hdoc1509/gh-actions.nvim",
	config = function()
		require("gh-actions.tree-sitter").setup()
		local ts = require("nvim-treesitter")
		ts.setup({
			install_dir = vim.fn.stdpath("data") .. "/site",
		})
		ts.install({
			"gh_actions_expressions",
			"go",
			"gomod",
			"gowork",
			"kdl",
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
		})
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(ev)
				if not pcall(vim.treesitter.start, ev.buf) then
					return
				end
				vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
