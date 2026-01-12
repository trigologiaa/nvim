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
