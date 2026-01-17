return {
	"saghen/blink.cmp",
	enabled = true,
	event = "InsertEnter",
	dependencies = {
		"onsails/lspkind.nvim",
		"xzbdmw/colorful-menu.nvim",
		"rafamadriz/friendly-snippets",
		"Kaiser-Yang/blink-cmp-git",
		"disrupted/blink-cmp-conventional-commits",
		"mikavilpas/blink-ripgrep.nvim",
		"bydlw98/blink-cmp-env",
		"moyiz/blink-emoji.nvim",
		"erooke/blink-cmp-latex",
		{
			"bydlw98/blink-cmp-sshconfig",
			build = "make",
		},
	},
	version = "1.*",
	opts = {
		keymap = {
			preset = "enter",
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			menu = {
				draw = {
					columns = {
						{
							"kind_icon",
						},
						{
							"label",
							gap = 1,
						},
						{
							"kind",
						},
					},
					components = {
						label = {
							text = function(ctx)
								return require("colorful-menu").blink_components_text(ctx)
							end,
							highlight = function(ctx)
								return require("colorful-menu").blink_components_highlight(ctx)
							end,
						},
					},
				},
			},
			documentation = {
				auto_show = true,
			},
		},
		sources = {
			default = {
				"latex",
				"emoji",
				"sshconfig",
				"env",
				"ripgrep",
				"conventional_commits",
				"git",
				"lsp",
				"path",
				"snippets",
				"buffer",
			},
			providers = {
				latex = {
					name = "Latex",
					module = "blink-cmp-latex",
					opts = {
						insert_command = false,
					},
				},
				emoji = {
					module = "blink-emoji",
					name = "Emoji",
					score_offset = 15,
					opts = {
						insert = true,
						trigger = function()
							return { ":" }
						end,
					},
					should_show_items = function()
						return vim.tbl_contains({ "gitcommit", "markdown" }, vim.o.filetype)
					end,
				},
				sshconfig = {
					name = "SshConfig",
					module = "blink-cmp-sshconfig",
				},
				env = {
					name = "Env",
					module = "blink-cmp-env",
					opts = {
						item_kind = 6,
						show_braces = false,
						show_documentation_window = true,
					},
				},
				ripgrep = {
					module = "blink-ripgrep",
					name = "Ripgrep",
					opts = {},
				},
				conventional_commits = {
					name = "Conventional Commits",
					module = "blink-cmp-conventional-commits",
					enabled = function()
						return vim.bo.filetype == "gitcommit"
					end,
					opts = {},
				},
				git = {
					module = "blink-cmp-git",
					name = "Git",
				},
			},
		},
		fuzzy = {
			implementation = "prefer_rust_with_warning",
		},
		opts_extend = {
			"sources.default",
		},
	},
}
