return {
	"nvim-telescope/telescope.nvim",
	enabled = true,
	tag = "v0.2.0",
	cmd = "Telescope",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"rcarriga/nvim-notify",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		for _, ext in ipairs({ "fzf", "fidget", "notify", "projects", "neoclip" }) do
			pcall(telescope.load_extension, ext)
		end
	end,
}
