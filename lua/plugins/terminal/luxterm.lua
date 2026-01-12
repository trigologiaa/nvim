return {
	"luxvim/nvim-luxterm",
	enabled = true,
	event = "VeryLazy",
	opts = {
		manager_width = 0.8,
		manager_height = 0.8,
		preview_enabled = true,
		auto_hide = true,
		keymaps = {
			toggle_manager = "<C- >",
			next_session = "<C-l>",
			prev_session = "<C-h>",
			global_session_nav = false,
		},
	},
}
