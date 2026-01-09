return {
	"folke/zen-mode.nvim",
	enabled = true,
	dependencies = "folke/twilight.nvim",
	event = "BufReadPost",
	opts = {
		window = {
			backdrop = 0.95,
			width = 120,
			height = 1,
		},
		plugins = {
			options = {
				enabled = true,
				ruler = false,
				showcmd = false,
				laststatus = 0,
			},
			twilight = {
				enabled = true,
			},
			gitsigns = {
				enabled = false,
			},
			tmux = {
				enabled = false,
			},
			todo = {
				enabled = false,
			},
			kitty = {
				enabled = true,
				font = "+4",
			},
			alacritty = {
				enabled = false,
				font = "14",
			},
			wezterm = {
				enabled = false,
				font = "+4",
			},
			neovide = {
				enabled = false,
				scale = 1.2,
				disable_animations = {
					neovide_animation_length = 0,
					neovide_cursor_animate_command_line = false,
					neovide_scroll_animation_length = 0,
					neovide_position_animation_length = 0,
					neovide_cursor_animation_length = 0,
					neovide_cursor_vfx_mode = "",
				},
			},
		},
	},
}
