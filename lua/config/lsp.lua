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

-- Markdown
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

-- JavaScript/TypeScript
vim.lsp.config["vtsls"] = {
	cmd = {
		"vtsls",
		"--stdio",
	},
	filetypes = {
		"typescript",
		"javascript",
		"javascriptreact",
		"typescriptreact",
		"javascript.jsx",
		"typescript.tsx",
	},
	init_options = {
		hostInfo = "neovim",
	},
	-- root_dir = nil,
}
vim.lsp.enable("vtsls")

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
vim.lsp.enable("ruby_lsp")

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
vim.lsp.enable("html")

vim.lsp.inlay_hint.enable(true)
