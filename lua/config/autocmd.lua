vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client and client.server_capabilities.inlayHintProvider then
			vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
			if client.name == "lua_ls" then
				vim.defer_fn(function()
					if vim.api.nvim_buf_is_valid(args.buf) then
						vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
					end
				end, 500)
			end
		end
	end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.hl", "hypr*.conf" },
	callback = function(event)
		print(string.format("starting hyprls for %s", vim.inspect(event)))
		vim.lsp.start({
			name = "hyprlang",
			cmd = { "hyprls" },
			root_dir = vim.fn.getcwd(),
			settings = {
				hyprls = {
					preferIgnoreFile = true, -- set to false to prefer `hyprls.ignore`
					ignore = { "hyprlock.conf", "hypridle.conf" },
				},
			},
		})
	end,
})
