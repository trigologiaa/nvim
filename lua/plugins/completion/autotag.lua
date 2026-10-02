return {
	"windwp/nvim-ts-autotag",
	enabled = true,
	event = "BufReadPre",
	-- ft = "html",
	opts = {
		opts = {
			enable_close = true,
			enable_rename = true,
			enable_close_on_slash = false,
		},
	},
}
