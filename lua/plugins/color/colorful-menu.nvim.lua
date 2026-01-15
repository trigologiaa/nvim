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
			lua_ls = {
				arguments_hl = "@comment",
			},
			pyright = {
				extra_info_hl = "@comment",
				arguments_hl = "@comment",
			},
			clangd = {
				extra_info_hl = "@comment",
				align_type_to_right = true,
				import_dot_hl = "@comment",
				preserve_type_when_truncape = true,
			},
			vtsls = {
				extra_info_hl = "@comment",
			},
			ts_ls = {
				extra_info_hl = "@comment",
			},
		},
		fallback_highlight = "@variable",
		max_width = 60,
	},
}
