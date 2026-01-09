return {
	"nvim-mini/mini.surround",
	version = false,
	event = "BufReadPre",
	opts = {
		custom_surroundings = nil,
		highlight_duration = 500,
		mappings = {
			add = "sa",
			delete = "sd",
			find = "sf",
			find_left = "sF",
			highlight = "sh",
			replace = "sr",
			suffix_last = "l",
			suffix_next = "n",
		},
		n_lines = 20,
		respect_selection_type = false,
		search_method = "cover",
		silent = false,
	},
}
