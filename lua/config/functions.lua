local M = {}

M.toggle_transparency = function()
	local catppuccin = require("catppuccin")
	catppuccin.options.transparent_background = not catppuccin.options.transparent_background
	catppuccin.compile()
	vim.cmd.colorscheme("catppuccin")
end

M.toggle_ui = function()
	pcall(vim.cmd, "SmearCursorToggle")
	pcall(vim.cmd, "Precognition toggle")
	pcall(vim.cmd, "TinyInlineDiag toggle")
	local status, functions = pcall(require, "config.functions")
	if status then
		functions.toggle_transparency()
	end
	vim.notify("trigologiaa.UI: effects toggled", vim.log.levels.INFO, { title = "UI" })
end

M.execute_go_file = function()
	if vim.bo.filetype == "go" then
		vim.cmd("silent write")
		local file = vim.fn.expand("%:p")
		local status, err = pcall(function()
			vim.cmd("LuxtermNew")
			vim.defer_fn(function()
				local enter = vim.api.nvim_replace_termcodes("<CR>", true, false, true)
				vim.api.nvim_feedkeys("go run " .. file .. enter, "t", false)
			end, 50)
		end)
		if not status then
			vim.notify("Error executing Luxterm: " .. tostring(err), vim.log.levels.ERROR)
		end
	else
		vim.notify("This is not a Go file", vim.log.levels.WARN)
	end
end

M.lint_go_project = function()
	if vim.bo.filetype == "go" then
		vim.cmd("silent write")
		local status, err = pcall(function()
			vim.cmd("LuxtermNew")
			vim.defer_fn(function()
				local enter = vim.api.nvim_replace_termcodes("<CR>", true, false, true)
				local command = "golangci-lint run ./..."
				vim.api.nvim_feedkeys(command .. enter, "t", false)
			end, 50)
		end)
		if not status then
			vim.notify("Error executing Luxterm for linting: " .. tostring(err), vim.log.levels.ERROR)
		end
	else
		vim.notify("This is not a Go file", vim.log.levels.WARN)
	end
end

M.toggle_autoformat = function()
	if vim.g.disable_autoformat then
		vim.g.disable_autoformat = false
		vim.notify("Autoformat enabled", vim.log.levels.INFO)
	else
		vim.g.disable_autoformat = true
		vim.notify("Autoformat disabled", vim.log.levels.WARN)
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

return M
