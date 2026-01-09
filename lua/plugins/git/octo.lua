return {
	"pwntester/octo.nvim",
	cmd = "Octo",
	opts = {
		picker = "telescope",
		enable_builtin = true,
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
		"nvim-tree/nvim-web-devicons",
	},
}
