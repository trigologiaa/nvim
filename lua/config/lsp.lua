vim.lsp.config["gopls"] = {
	cmd = {
		"gopls",
	},
	filetypes = {
		"go",
		"gomod",
		"gowork",
		"gotmpl",
	},
	root_markers = {
		"go.work",
		"go.mod",
		".git",
	},
	settings = {
		gopls = {
			hints = {
				assignVariableTypes = true,
				compositeLiteralFields = true,
				compositeLiteralTypes = true,
				constantValues = true,
				functionTypeParameters = true,
				parameterNames = true,
				rangeVariableTypes = true,
			},
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
			completeUnimported = true,
			usePlaceholders = true,
			codelenses = {
				generate = true,
				gc_details = true,
				test = true,
				tidy = true,
				vendor = true,
				regenerate_cgo = true,
				upgrade_dependency = true,
			},
		},
	},
}

vim.lsp.enable("gopls")

vim.lsp.config["lua_ls"] = {
	cmd = {
		"lua-language-server",
	},
	filetypes = {
		"lua",
	},
	root_markers = {
		".emmyrc.json",
		".luarc.json",
		".luarc.jsonc",
		".stylua.toml",
		"stylua.toml",
		"selene.toml",
		"selene.yml",
		".git",
	},
	settings = {
		Lua = {
			codeLens = {
				enable = true,
			},
			hint = {
				enable = true,
				setType = true,
				paramName = "All",
				paramType = true,
				arrayIndex = "Disable",
			},
			diagnostics = {
				globals = {
					"vim",
				},
			},
		},
	},
}

vim.lsp.enable("lua_ls")

vim.lsp.config["r_language_server"] = {
	cmd = {
		"R",
		"--no-echo",
		"-e",
		"languageserver::run()",
	},
	filetypes = {
		"r",
		"rmd",
		"quarto",
	},
	-- root_dir = {}
}

vim.lsp.enable("r_language_server")

vim.lsp.config["pyright"] = {
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
				typeCheckingMode = "basic",
			},
			inlayHints = {
				variableTypes = true,
				functionReturnTypes = true,
				genericTypes = true,
				parameterNames = true,
			},
		},
	},
}

vim.lsp.enable("pyright")

vim.lsp.inlay_hint.enable(true)
