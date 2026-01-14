local M = {}

local function get_lint_command(ft, file)
	local is_maven = vim.fn.findfile("pom.xml", ".;") ~= ""
	local cmds = {
		go = "golangci-lint run " .. vim.fn.expand("%:p:h"),
		lua = "selene " .. file,
		python = "ruff check " .. file,
		r = "Rscript -e \"lintr::lint('" .. file .. "')\"",
		c = "cpplint " .. file,
		java = is_maven and "mvn checkstyle:check" or "echo 'pom.xml not detected for checkstyle'",
	}
	return cmds[ft]
end

local function get_java_run_command(file)
	local is_maven = vim.fn.findfile("pom.xml", ".;") ~= ""
	if not is_maven then
		return "java " .. file
	end
	local lines = vim.fn.readfile(file)
	local package = ""
	local class = vim.fn.expand("%:t:r")
	for _, line in ipairs(lines) do
		local p = line:match("^package%s+([%w%.]+);")
		if p then
			package = p .. "."
			break
		end
	end
	local full_class = package .. class
	return string.format('mvn compile exec:java -Dexec.mainClass="%s"', full_class)
end

local function get_c_run_command(file)
	local has_makefile = vim.fn.filereadable("Makefile") == 1
	if has_makefile then
		if vim.fn.filereadable("bin/app") == 1 then
			return "make && bin/app"
		end
		local binary_name = vim.fn.expand("%:t:r")
		return "make && ./" .. binary_name
	else
		return "gcc " .. file .. " -o /tmp/main && /tmp/main"
	end
end

local function get_run_command(ft, file)
	local cmds = {
		go = "go run " .. file,
		lua = "lua " .. file,
		python = "python " .. file,
		r = "Rscript " .. file,
		c = get_c_run_command(file),
		java = get_java_run_command(file),
	}
	return cmds[ft]
end

M.toggle_cursor_animation = function()
	local status, _ = pcall(vim.cmd, "SmearCursorToggle")
	if not status then
		vim.notify("SmearCursor not found", vim.log.levels.ERROR)
		return
	end
	if vim.g.smear_cursor_enabled == nil then
		vim.g.smear_cursor_enabled = true
	end
	if vim.g.smear_cursor_enabled == nil then
		vim.g.smear_cursor_enabled = true
	end
	if vim.g.smear_cursor_enabled then
		vim.g.smear_cursor_enabled = false
		vim.notify("Cursor animation disabled", vim.log.levels.WARN, { title = "UI" })
	else
		vim.g.smear_cursor_enabled = true
		vim.notify("Cursor animation enabled", vim.log.levels.INFO, { title = "UI" })
	end
end

M.toggle_diagnostics = function()
	local tiny_ok, tiny_diag = pcall(require, "tiny-inline-diagnostic")
	if vim.diagnostic.is_enabled() then
		vim.diagnostic.enable(false)
		if tiny_ok then
			tiny_diag.disable()
		end
		vim.notify("Diagnostics disabled", vim.log.levels.WARN, { title = "UI" })
	else
		vim.diagnostic.enable(true)
		if tiny_ok then
			tiny_diag.enable()
		end
		vim.notify("Diagnostics enabled", vim.log.levels.INFO, { title = "UI" })
	end
end

M.toggle_autoformat = function()
	if vim.g.disable_autoformat then
		vim.g.disable_autoformat = false
		vim.notify("Autoformat enabled", vim.log.levels.INFO, { title = "UI" })
	else
		vim.g.disable_autoformat = true
		vim.notify("Autoformat disabled", vim.log.levels.WARN, { title = "UI" })
	end
end

M.toggle_inlay_hints = function()
	local is_enabled = vim.lsp.inlay_hint.is_enabled()
	if is_enabled then
		vim.lsp.inlay_hint.enable(false)
		vim.notify("Inlay Hints disabled", vim.log.levels.WARN, { title = "UI" })
	else
		vim.lsp.inlay_hint.enable(true)
		vim.notify("Inlay Hints enabled", vim.log.levels.INFO, { title = "UI" })
	end
end

M.toggle_motion_hints = function()
	local status, _ = pcall(vim.cmd, "Precognition toggle")
	if not status then
		vim.notify("Precognition plugin not found", vim.log.levels.ERROR)
		return
	end
	if vim.g.motion_hints_enabled == nil then
		vim.g.motion_hints_enabled = true
	end
	if vim.g.motion_hints_enabled then
		vim.g.motion_hints_enabled = false
		vim.notify("Motion hints disabled", vim.log.levels.WARN, { title = "UI" })
	else
		vim.g.motion_hints_enabled = true
		vim.notify("Motion hints enabled", vim.log.levels.INFO, { title = "UI" })
	end
end

M.toggle_transparency = function()
	local status, catppuccin = pcall(require, "catppuccin")
	if not status then
		vim.notify("Catppuccin not found", vim.log.levels.ERROR)
		return
	end
	catppuccin.options.transparent_background = not catppuccin.options.transparent_background
	catppuccin.compile()
	vim.cmd.colorscheme("catppuccin")
	if catppuccin.options.transparent_background then
		vim.notify("Transparency enabled", vim.log.levels.INFO, { title = "UI" })
	else
		vim.notify("Transparency disabled", vim.log.levels.WARN, { title = "UI" })
	end
end

M.toggle_ui = function()
	M.toggle_motion_hints()
	M.toggle_inlay_hints()
	M.toggle_autoformat()
	M.toggle_cursor_animation()
	M.toggle_transparency()
	M.toggle_diagnostics()
	vim.notify("trigologiaa: UI toggled", vim.log.levels.INFO, { title = "UI" })
end

M.toggle_csv_view = function()
	local status, _ = pcall(vim.cmd, "CsvViewToggle")
	if not status then
		vim.notify("CsvView plugin not found", vim.log.levels.ERROR)
		return
	end
	if vim.g.csv_view_enabled == nil then
		vim.g.csv_view_enabled = false
	end
	if vim.g.csv_view_enabled then
		vim.g.csv_view_enabled = false
		vim.notify("CSV View disabled", vim.log.levels.WARN, { title = "UI" })
	else
		vim.g.csv_view_enabled = true
		vim.notify("CSV View enabled", vim.log.levels.INFO, { title = "UI" })
	end
end

M.toggle_zen_mode = function()
	local status, _ = pcall(vim.cmd, "ZenMode")
	if not status then
		vim.notify("ZenMode plugin not found", vim.log.levels.ERROR)
		return
	end
	if vim.g.zen_mode_enabled == nil then
		vim.g.zen_mode_enabled = false
	end
	if vim.g.zen_mode_enabled then
		vim.g.zen_mode_enabled = false
		vim.notify("Zen Mode disabled", vim.log.levels.WARN, { title = "UI" })
	else
		vim.g.zen_mode_enabled = true
		vim.notify("Zen Mode enabled", vim.log.levels.INFO, { title = "UI" })
	end
end

M.execute_current_file = function()
	local ft = vim.bo.filetype
	local file = vim.fn.expand("%:p")
	local command = get_run_command(ft, file)
	if not command then
		vim.notify("Filetype '" .. ft .. "' is not supported for execution", vim.log.levels.WARN)
		return
	end
	vim.cmd("silent write")
	local status, err = pcall(function()
		vim.cmd("LuxtermNew")
		vim.defer_fn(function()
			local enter = vim.api.nvim_replace_termcodes("<CR>", true, false, true)
			vim.api.nvim_feedkeys(command .. enter, "t", false)
		end, 50)
	end)
	if not status then
		vim.notify("Error executing Luxterm: " .. tostring(err), vim.log.levels.ERROR)
	end
end

M.generate_doc_comment = function()
	local ft = vim.bo.filetype
	local node = vim.treesitter.get_node()
	if not node then
		vim.notify("No Treesitter node found under cursor", vim.log.levels.WARN)
		return
	end
	while node do
		local type = node:type()
		if
			type:match("declaration")
			or type:match("definition")
			or type:match("method")
			or type:match("class")
			or type:match("function_item")
			or type:match("package_clause")
		then
			break
		end
		node = node:parent()
	end
	if not node then
		vim.notify("No definition detected", vim.log.levels.WARN)
		return
	end
	local name = ""
	for child in node:iter_children() do
		if
			child:type() == "identifier"
			or child:type() == "name"
			or child:type() == "field_identifier"
			or child:type() == "type_identifier"
			or child:type() == "package_identifier"
		then
			name = vim.treesitter.get_node_text(child, 0)
			break
		end
	end
	local formats = {
		go = "// %s ...",
		lua = "--- %s ...",
		python = '"""%s: ... """',
	}
	local default_comment = (ft == "python") and '"""%s: ... """' or "// %s ..."
	local format = formats[ft] or default_comment
	local comment = string.format(format, name)
	local start_row, _, _, _ = node:range()
	if ft == "python" then
		local current_indent = vim.fn.indent(start_row + 1)
		local sw = vim.bo.shiftwidth
		local padding = string.rep(" ", current_indent + sw)
		local python_comment = padding .. comment
		vim.api.nvim_buf_set_lines(0, start_row + 1, start_row + 1, false, { python_comment })
		vim.api.nvim_win_set_cursor(0, { start_row + 2, #python_comment })
	else
		local lines = vim.split(comment, "\n")
		vim.api.nvim_buf_set_lines(0, start_row, start_row, false, lines)
		vim.api.nvim_win_set_cursor(0, { start_row + 1, #lines[1] })
	end
end

M.lint_file = function()
	local ft = vim.bo.filetype
	local file = vim.fn.expand("%:p")
	local command = get_lint_command(ft, file)
	if not command then
		vim.notify("No linter configured for filetype: " .. ft, vim.log.levels.WARN)
		return
	end
	vim.cmd("silent write")
	local status, err = pcall(function()
		vim.cmd("LuxtermNew")
		vim.defer_fn(function()
			local enter = vim.api.nvim_replace_termcodes("<CR>", true, false, true)
			vim.api.nvim_feedkeys(command .. enter, "t", false)
		end, 50)
	end)
	if not status then
		vim.notify("Error executing Luxterm: " .. tostring(err), vim.log.levels.ERROR)
	end
end

M.code_actions = function()
	local status, _ = pcall(function()
		require("tiny-code-action").code_action()
	end)
	if not status then
		vim.notify("No code actions available at cursor", vim.log.levels.WARN, { title = "LSP" })
	end
end

M.new_file = function()
	local dir = vim.fn.expand("%:p:h") .. "/"
	vim.ui.input({ prompt = "New file name: ", default = dir, completion = "file" }, function(input)
		if input and input ~= "" then
			vim.cmd("e " .. input)
		end
	end)
end

M.generate_maven_project = function()
	if vim.bo.buftype ~= "" then
		vim.cmd("enew")
	end
	local ok, err = pcall(function()
		vim.cmd("LuxtermNew")
		vim.defer_fn(function()
			local enter = vim.api.nvim_replace_termcodes("<CR>", true, false, true)
			vim.api.nvim_feedkeys("mvn archetype:generate" .. enter, "t", false)
		end, 50)
	end)
	if not ok then
		vim.notify("Error executing Luxterm: " .. tostring(err), vim.log.levels.ERROR)
	end
end

return M
