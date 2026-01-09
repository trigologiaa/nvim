return {
	"nvim-telescope/telescope.nvim",
	enabled = true,
	tag = "v0.2.0",
	cmd = "Telescope",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
		"sharkdp/fd",
		"nvim-tree/nvim-web-devicons",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	opts = {
		extensions = {
			projects = {
				prompt_prefix = "󱎸  ",
				layout_strategy = "horizontal",
				layout_config = {
					anchor = "N",
					height = 0.25,
					width = 0.6,
					prompt_position = "bottom",
				},
			},
		},
	},
	config = function()
		require("telescope").load_extension("fidget")
	end,
}
