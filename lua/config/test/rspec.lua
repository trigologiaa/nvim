return {
	rspec_cmd = function()
		return vim.iter({ "bundle", "exec", "rspec" }):flatten():totable()
	end,
	root_files = {
		"Gemfile",
		".rspec",
		".gitignore",
	},
	filter_dirs = {
		".git",
		"node_modules",
	},
	transform_spec_path = function(path)
		return path
	end,
	engine_support = true,
	-- results_path = function()
	-- 	return async.fn.tempname()
	-- end,
	formatter = function()
		return "NeotestFormatter"
	end,
}
