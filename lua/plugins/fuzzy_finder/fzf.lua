return {
	"ibhagwan/fzf-lua",
	enabled = true,
	event = "VeryLazy",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		--,
	},
	config = function()
		local fzf = require("fzf-lua")
		fzf.setup({})
		fzf.register_ui_select()
	end,
}
