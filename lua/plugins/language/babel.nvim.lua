return {
	"acidsugarx/babel.nvim",
	version = "*",
	cmd = {
		"Babel",
		"BabelWord",
	},
	opts = {
		source = "auto",
		target = "es",
		provider = "google",
		display = "float",
		picker = "auto",
		float = {
			border = "rounded",
			max_width = 80,
			max_height = 20,
		},
	},
}
