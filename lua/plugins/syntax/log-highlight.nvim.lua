return {
	"fei6409/log-highlight.nvim",
	event = {
		"BufReadPost",
		"BufNewFile",
	},
	opts = {
		extension = "log",
		filename = {
			"syslog",
		},
		pattern = {
			"%/var%/log%/.*",
			"console%-ramoops.*",
			"log.*%.txt",
			"logcat.*",
		},
		keyword = {
			error = "ERROR_MSG",
			warning = {
				"WARN_X",
				"WARN_Y",
			},
			info = {
				"INFORMATION",
			},
			debug = {
				--,
			},
			pass = {
				--,
			},
		},
	},
}
