return {
	"romus204/tree-sitter-manager.nvim",
	config = function()
		require("tree-sitter-manager").setup({
			ensure_installed = {},
			border = "rounded",
			auto_install = false,
			highlight = true,
			languages = {},
		})
	end,
}
