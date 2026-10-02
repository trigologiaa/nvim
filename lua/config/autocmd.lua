local group = vim.api.nvim_create_augroup("user", { clear = true })

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
	group = group,
	callback = function()
		vim.hl.on_yank()
	end,
})

-- Restore last cursor position
vim.api.nvim_create_autocmd("BufReadPost", {
	group = group,
	callback = function(event)
		local exclude = {
			"gitcommit",
			"gitrebase",
		}
		local buf = event.buf
		if vim.tbl_contains(exclude, vim.bo[buf].filetype) or vim.b[buf].user_last_loc then
			return
		end
		vim.b[buf].user_last_loc = true
		local mark = vim.api.nvim_buf_get_mark(buf, '"')
		local lines = vim.api.nvim_buf_line_count(buf)
		if mark[1] > 0 and mark[1] <= lines then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})

-- Reload files changed outside of Neovim (needed with 'autoread')
vim.api.nvim_create_autocmd({
	"FocusGained",
	"TermLeave",
	"BufEnter",
}, {
	group = group,
	callback = function()
		if vim.o.buftype == "" and vim.fn.getcmdwintype() == "" then
			vim.cmd("checktime")
		end
	end,
})

-- Keep splits equal after resizing the terminal window
vim.api.nvim_create_autocmd("VimResized", {
	group = group,
	callback = function()
		local tab = vim.fn.tabpagenr()
		vim.cmd("tabdo wincmd =")
		vim.cmd("tabnext " .. tab)
	end,
})

-- Create missing parent directories on save
vim.api.nvim_create_autocmd("BufWritePre", {
	group = group,
	callback = function(event)
		if event.match:match("^%w%w+:[\\/][\\/]") then
			return
		end
		local file = vim.uv.fs_realpath(event.match) or event.match
		vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
	end,
})

-- Close auxiliary windows with 'q'
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = {
		"help",
		"qf",
		"man",
		"checkhealth",
		"lspinfo",
		"notify",
		"startuptime",
		"dap-float",
	},
	callback = function(event)
		vim.bo[event.buf].buflisted = false
		vim.keymap.set("n", "q", "<cmd>close<CR>", {
			buffer = event.buf,
			silent = true,
			desc = "close window",
		})
	end,
})

-- Prose: spell checking (wrap is already global)
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = {
		"markdown",
		"gitcommit",
		"text",
	},
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})

-- Terminal: enter insert mode right away
vim.api.nvim_create_autocmd("TermOpen", {
	group = group,
	callback = function()
		vim.cmd("startinsert")
	end,
})
