return {
	"rachartier/tiny-inline-diagnostic.nvim",
	enabled = true,
	event = "BufReadPost",
	opts = {
		preset = "modern",
		transparent_bg = true,
		transparent_cursorline = true,
		hi = {
			error = "DiagnosticError",
			warn = "DiagnosticWarn",
			info = "DiagnosticInfo",
			hint = "DiagnosticHint",
			arrow = "NonText",
			background = "CursorLine",
			mixing_color = "Normal",
		},
		disabled_ft = {
			--,
		},
		options = {
			show_source = {
				enabled = false,
				if_many = false,
			},
			use_icons_from_diagnostic = false,
			set_arrow_to_diag_color = false,
			throttle = 0,
			softwrap = 30,
			add_messages = {
				messages = true,
				display_count = false,
				use_max_severity = false,
				show_multiple_glyphs = true,
			},
			multilines = {
				enabled = true,
				always_show = true,
				trim_whitespaces = false,
				tabstop = 4,
				severity = nil,
			},
			show_all_diags_on_cursorline = false,
			show_diags_only_under_cursor = false,
			show_related = {
				enabled = true,
				max_count = 3,
			},
			enable_on_insert = true,
			enable_on_select = false,
			overflow = {
				mode = "wrap",
				padding = 0,
			},
			break_line = {
				enabled = false,
				after = 30,
			},
			format = nil,
			virt_texts = {
				priority = 2048,
			},
			severity = {
				vim.diagnostic.severity.ERROR,
				vim.diagnostic.severity.WARN,
				vim.diagnostic.severity.INFO,
				vim.diagnostic.severity.HINT,
			},
			overwrite_events = nil,
			override_open_float = false,
			experimental = {
				use_window_local_extmarks = false,
			},
		},
	},
}
