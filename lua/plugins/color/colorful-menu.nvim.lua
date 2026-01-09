return {
	"xzbdmw/colorful-menu.nvim",
	enabled = true,
	event = "InsertEnter",
	opts = {
		ls = {
			gopls = {
				align_type_to_right = false,
				add_colon_before_type = false,
				preserve_type_when_truncate = false,
			},
		},
		fallback_highlight = "@variable",
		max_width = 60,
	},
}
