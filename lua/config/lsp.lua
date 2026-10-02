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
			runtime = {
				version = "LuaJIT",
			},
		},
	},
}

-- Python
vim.lsp.config["ruff"] = {
	cmd = {
		"ruff",
		"server",
	},
	filetypes = {
		"python",
	},
	root_markers = {
		"pyproject.toml",
		"ruff.toml",
		".ruff.toml",
		".git",
	},
	init_options = {
		settings = {
			lint = {
				enable = true,
			},
		},
	},
}

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
		"--background-index",
		"--clang-tidy",
		"--header-insertion=never",
		"--fallback-style=llvm",
	},
	filetypes = {
		"c",
		"cpp",
		"objc",
		"objcpp",
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

vim.lsp.config["eslint"] = {
	cmd = {
		"vscode-eslint-language-server",
		"--stdio",
	},
	filetypes = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"vue",
		"svelte",
		"astro",
		"htmlangular",
	},
	root_markers = {
		".eslintrc.js",
		".eslintrc.json",
		"eslint.config.js",
		"package.json",
		".git",
	},
	settings = {
		experimental = {
			useFlatConfig = true,
		},
		workingDirectories = {
			mode = "location",
		},
	},
}

-- Ruby
vim.lsp.config["ruby_lsp"] = {
	cmd = {
		"ruby-lsp",
	},
	filetypes = {
		"ruby",
		"eruby",
	},
	init_options = {
		formatter = "rubocop",
		linters = {
			"rubocop",
		},
	},
	-- reuse_client = nil,
	root_markers = {
		"Gemfile",
		".git",
	},
}

-- HTML
local capabilitiesHTML = vim.lsp.protocol.make_client_capabilities()
capabilitiesHTML.textDocument.completion.completionItem.snippetSupport = true
vim.lsp.config["html"] = {
	cmd = {
		"vscode-html-language-server",
		"--stdio",
	},
	filetypes = {
		"html",
		"templ",
	},
	init_options = {
		configurationSection = {
			"html",
			"css",
			"javascript",
		},
		embeddedLanguages = {
			css = true,
			javascript = true,
		},
		provideFormatter = true,
	},
	root_markers = {
		"package.json",
		".git",
	},
	settings = {},
	capabilities = capabilitiesHTML,
}

-- ERB
vim.lsp.config["herb_ls"] = {
	cmd = {
		"herb-language-server",
		"--stdio",
	},
	filetypes = {
		"eruby",
	},
	root_markers = {
		"Gemfile",
		".git",
	},
}

vim.lsp.config["kotlin_language_server"] = {
	cmd = {
		"kotlin-language-server",
	},
	cmd_env = {
		JAVA_HOME = vim.env.KOTLIN_JAVA_HOME or "/usr/lib/jvm/java-21-openjdk/",
	},
	filetypes = {
		"kotlin",
	},
	init_options = {},
	root_markers = {
		"settings.gradle",
		"settings.gradle.kts",
		"build.xml",
		"pom.xml",
		"build.gradle",
		"build.gradle.kts",
	},
}

vim.lsp.config["vue_ls"] = {
	cmd = {
		"vue-language-server",
		"--stdio",
	},
	filetypes = {
		"vue",
	},
	-- on_init = nil,
	root_markers = {
		"package.json",
	},
}

local vue_plugin = {
	name = "@vue/typescript-plugin",
	location = vim.fn.stdpath("data") .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
	languages = {
		"vue",
	},
	configNamespace = "typescript",
}
vim.lsp.config["vtsls"] = {
	settings = {
		vtsls = {
			tsserver = {
				globalPlugins = {
					vue_plugin,
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
}

vim.lsp.inlay_hint.enable(true)
