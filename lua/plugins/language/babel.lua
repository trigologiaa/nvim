return {
	"acidsugarx/babel.nvim",
	enabled = true,
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
		picker = "telescope",
		float = {
			border = "rounded",
			max_width = 80,
			max_height = 20,
		},
	},
}
