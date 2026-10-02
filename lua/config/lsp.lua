-- Go
vim.lsp.config("gopls", {
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
})

-- Lua
vim.lsp.config("lua_ls", {
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
			runtime = {
				version = "LuaJIT",
			},
		},
	},
})

-- Python
vim.lsp.config("ruff", {
	init_options = {
		settings = {
			lint = {
				enable = true,
			},
		},
	},
})

-- C
vim.lsp.config("clangd", {
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"--header-insertion=never",
		"--fallback-style=llvm",
	},
})

-- JavaScript / TypeScript
vim.lsp.config("eslint", {
	settings = {
		experimental = {
			useFlatConfig = true,
		},
		workingDirectories = {
			mode = "location",
		},
	},
})

-- Ruby
vim.lsp.config("ruby_lsp", {
	init_options = {
		formatter = "rubocop",
		linters = {
			"rubocop",
		},
	},
})

-- HTML
vim.lsp.config("html", {
	filetypes = {
		"html",
		"templ",
	},
})

-- ERB
vim.lsp.config("herb_ls", {
	filetypes = {
		"eruby",
	},
})

-- Kotlin
vim.lsp.config("kotlin_language_server", {
	cmd_env = {
		JAVA_HOME = vim.env.KOTLIN_JAVA_HOME or "/usr/lib/jvm/java-21-openjdk/",
	},
})

-- TypeScript / JavaScript (also serves .vue files in hybrid mode with vue_ls)
vim.lsp.config("vtsls", {
	settings = {
		vtsls = {
			tsserver = {
				globalPlugins = {
					{
						name = "@vue/typescript-plugin",
						location = vim.fn.stdpath("data")
							.. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
						languages = {
							"vue",
						},
						configNamespace = "typescript",
					},
				},
			},
		},
	},
	filetypes = {
		"typescript",
		"javascript",
		"javascriptreact",
		"typescriptreact",
		"vue",
	},
})

vim.lsp.inlay_hint.enable(true)
