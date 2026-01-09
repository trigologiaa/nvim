return {
	"Rawnly/gist.nvim",
	enabled = true,
	cmd = {
		"GistCreate",
		"GistCreateFromFile",
		"GistsList",
	},
	config = true,
	opts = {
		platform = "github",
		clipboard = "+",
		prompts = {
			create = {
				private = false,
				description = false,
				confirmation = false,
			},
		},
		platforms = {
			github = {
				private = false,
				cmd = "gh",
				list = {
					limit = nil,
					read_only = false,
				},
			},
			gitlab = {
				cmd = "glab",
				private = true,
			},
			termbin = {
				url = "termbin.com",
				port = 9999,
			},
			["0x0"] = {
				private = false,
			},
			sourcehut = {
				cmd = "hut",
			},
		},
		list = {
			use_multiplexer = true,
			mappings = {
				next_file = "<C-n>",
				prev_file = "<C-p>",
			},
		},
	},
}
