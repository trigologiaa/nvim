return {
	"obsidian-nvim/obsidian.nvim",
	enabled = true,
	version = "*",
	ft = "markdown",
	opts = {
		legacy_commands = false,
		workspaces = {
			{
				name = "gaston",
				path = "~/Documents/Obsidian/vault/",
			},
		},
	},
}
