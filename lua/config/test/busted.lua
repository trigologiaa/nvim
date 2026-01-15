return {
	busted_command = "busted",
	no_nvim = true,
	busted_args = {
		"--shuffle-files",
	},
	busted_paths = {
		"./?.lua",
		"./lua/?.lua",
		"./spec/?.lua",
	},
	parametric_test_discovery = false,
	local_luarocks_only = false,
}
