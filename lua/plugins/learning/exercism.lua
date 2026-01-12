return {
	"2kabhishek/exercism.nvim",
	enabled = true,
	cmd = "Exercism",
	dependencies = {
		"2kabhishek/utils.nvim",
		"2kabhishek/termim.nvim",
	},
	opts = {
		exercism_workspace = "~/exercism",
		default_language = "go",
		add_default_keybindings = true,
		max_recents = 30,
		icons = {
			concept = "",
			practice = "",
		},
	},
}
