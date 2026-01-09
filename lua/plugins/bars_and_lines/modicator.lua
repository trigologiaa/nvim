return {
	"mawkler/modicator.nvim",
	enabled = true,
	event = "BufReadPost",
	dependencies = "catppuccin/nvim",
	opts = {
		show_warnings = true,
		highlights = {
			defaults = {
				bold = false,
				italic = false,
			},
			use_cursorline_background = false,
		},
		integration = {
			lualine = {
				enabled = true,
				mode_section = nil,
				highlight = "bg",
			},
		},
	},
}
