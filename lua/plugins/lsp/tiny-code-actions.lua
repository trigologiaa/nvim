return {
	"rachartier/tiny-code-action.nvim",
	enabled = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	event = "LspAttach",
	opts = {
		backend = "delta",
		picker = "telescope",
	},
}
