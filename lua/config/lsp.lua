-- Go
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
vim.lsp.enable("go")

-- Lua
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
vim.lsp.enable("lua")

-- Python
vim.lsp.config["pyright"] = {
	cmd = {
		"pyright",
	},
	filetypes = {
		"python",
	},
	root_markers = {
		"pyproject.toml",
		"setup.py",
		".git",
	},
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
vim.lsp.enable("python")

-- R
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
	root_markers = {
		".git",
		".Rproj.user",
	},
}
vim.lsp.enable("r")

-- C
vim.lsp.config["clangd"] = {
	capabilities = {
		offsetEncoding = {
			"utf-8",
			"utf-16",
		},
		textDocument = {
			completion = {
				editsNearCursor = true,
			},
		},
	},
	cmd = {
		"clangd",
	},
	filetypes = {
		"c",
		"cpp",
		"objc",
		"obcpp",
		"cuda",
	},
	-- on_attach = nil,
	-- on_init = nil,
	root_markers = {
		".clangd",
		".clang-tidy",
		".clang-format",
		"compile_commands.json",
		"compile_flags.txt",
		"configure.ac",
		".git",
	},
}
vim.lsp.enable("clangd")

-- SQL
vim.lsp.config["sqls"] = {
	cmd = {
		"sqls",
	},
	filetypes = {
		"sql",
		"mysql",
	},
	root_markers = {
		"config.yml",
	},
	settings = {},
}
vim.lsp.enable("sqls")

vim.lsp.config["markdown_oxide"] = {
	cmd = {
		"markdown-oxide",
	},
	filetype = {
		"markdown",
	},
	-- on_attach = nil,
	root_markers = {
		".git",
		".obdsidian",
		".moxide.toml",
	},
}
vim.lsp.enable("markdown_oxide")

vim.lsp.inlay_hint.enable(true)
