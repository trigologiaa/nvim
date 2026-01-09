return {
	"nvim-lualine/lualine.nvim",
	enabled = true,
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "VeryLazy",
	opts = {
		options = {
			icons_enabled = true,
			theme = "catppuccin",
			component_separators = {
				left = "",
				right = "",
			},
			section_separators = {
				left = "",
				right = "",
			},
			disabled_filetypes = {
				statusline = {
					--,
				},
				winbar = {
					--
				},
			},
			ignore_focus = {
				--,
			},
			always_divide_middle = true,
			always_show_tabline = true,
			globalstatus = true,
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
				refresh_time = 16,
				events = {
					"WinEnter",
					"BufEnter",
					"BufWritePost",
					"SessionLoadPost",
					"FileChangedShellPost",
					"VimResized",
					"Filetype",
					"CursorMoved",
					"CursorMovedI",
					"ModeChanged",
				},
			},
		},
		sections = {
			lualine_a = {
				{
					"mode",
					separator = {
						left = "",
						right = "",
					},
					fmt = function(str)
						if str == "NORMAL" then
							return " " .. str .. "  "
						elseif str == "INSERT" then
							return " " .. str .. "  "
						elseif str == "VISUAL" then
							return " " .. str .. " 󰈈 "
						elseif str == "COMMAND" then
							return " " .. str .. "  "
						end
						return str
					end,
				},
			},
			lualine_b = {
				"branch",
				"diff",
				"diagnostics",
			},
			lualine_c = {
				"filename",
			},
			lualine_x = {
				"encoding",
				"fileformat",
				"filetype",
				"lsp_status",
			},
			lualine_y = {
				"progress",
			},
			lualine_z = {
				{
					"location",
					separator = {
						right = "",
						left = "",
					},
				},
			},
		},
		inactive_sections = {
			lualine_a = {
				--,
			},
			lualine_b = {
				--,
			},
			lualine_c = {
				"filename",
			},
			lualine_x = {
				"location",
			},
			lualine_y = {
				--,
			},
			lualine_z = {
				--,
			},
		},
		tabline = {
			--,
		},
		winbar = {
			--,
		},
		inactive_winbar = {
			--,
		},
		extensions = {
			"fzf",
			"lazy",
			"mason",
			"trouble",
			"quickfix",
		},
	},
}
