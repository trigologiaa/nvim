return {
	"m4xshen/hardtime.nvim",
	enabled = true,
	event = "BufReadPost",
	dependencies = "MunifTanjim/nui.nvim",
	opts = {
		disabled_keys = {
			["<Up>"] = {
				"",
			},
			["<Down>"] = {
				"",
			},
			["<Left>"] = {
				"",
			},
			["<Right>"] = {
				"",
			},
		},
	},
}
